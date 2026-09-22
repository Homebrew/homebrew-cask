cask "recaf" do
  arch arm: "aarch", intel: "86-x64"

  version "4.0.0-alpha,20260729100310"
  sha256 arm:   "0a491ac0717a2e58f0976b5a215c2d195fd5789bf990c3edb4fe54d3e90b5cbd",
         intel: "2166881af5ddc0dab5b8efd21b73dc68047e5c234ffe35022fd5cdd97028bb96"

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

  depends_on cask: "temurin@25"
  depends_on :macos
  container type: :naked

  # Renamed for clarity: jar file name is overly complex
  artifact "recaf-4x-alpha-mac-#{arch}.jar", target: "#{appdir}/Recaf.jar"

  zap trash: [
    "~/Library/Application Support/Recaf",
    "~/Library/Preferences/Recaf",
  ]
end
