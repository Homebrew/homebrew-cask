cask "recaf" do
  arch arm: "aarch", intel: "86-x64"

  version "4.0.0-alpha,20260729100310"
  sha256 :no_check

  url "https://github.com/Col-E/Recaf/releases/download/#{version.csv.first}/recaf-4x-alpha-mac-#{arch}.jar"
  name "Recaf"
  desc "Java bytecode editor"
  homepage "https://recaf.coley.software/"

  # Upstream replaces the platform JARs without changing the release tag.
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-alpha)?)$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      assets = json["assets"]&.select do |asset|
        %w[recaf-4x-alpha-mac-aarch.jar recaf-4x-alpha-mac-86-x64.jar].include?(asset["name"])
      end
      next if assets.blank? || assets.length != 2

      "#{match[1]},#{assets.map { |asset| asset["updated_at"] }.max.gsub(/\D/, "")}"
    end
  end

  depends_on :macos
  container type: :naked

  # Renamed for clarity: jar file name is overly complex
  artifact "recaf-4x-alpha-mac-#{arch}.jar", target: "#{appdir}/Recaf.jar"

  zap trash: [
    "~/Library/Application Support/Recaf",
    "~/Library/Preferences/Recaf",
  ]

  caveats do
    depends_on_java "22+"
    <<~EOS
      If you use Homebrew's openjdk formula, register it with macOS to allow launching
      Recaf.jar from Finder:
        sudo ln -sfn #{HOMEBREW_PREFIX}/opt/openjdk/libexec/openjdk.jdk \\
          /Library/Java/JavaVirtualMachines/openjdk.jdk
    EOS
  end
end
