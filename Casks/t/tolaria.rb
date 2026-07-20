cask "tolaria" do
  arch arm: "Silicon", intel: "Intel"

  version "2026.07.14,2026.7.14"

  artifact = on_system_conditional linux: "Tolaria_#{version.csv.second || version}_amd64.AppImage",
                                   macos: "Tolaria_#{version.csv.second || version}_macOS_#{arch}.dmg"

  url "https://github.com/refactoringhq/tolaria/releases/download/v#{version.csv.first.dots_to_hyphens}/#{artifact}",
      verified: "github.com/refactoringhq/tolaria/"
  name "Tolaria"
  desc "Markdown knowledgebase manager"
  homepage "https://tolaria.md/"

  # The version formatting in the tag name can be inconsistent
  # with the version in the asset name, so we need to compare
  # both and return them in the version if they don't match.
  livecheck do
    url :url
    regex(/Tolaria[._-]v?(\d+(?:\.\d+)+)[._-]macOS[._-]#{arch}\.dmg/i)
    strategy :github_latest do |json, regex|
      tag_version = json["tag_name"]&.tr("-", ".")&.gsub(/^v/, "")
      next if tag_version.blank?

      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        (match[1] == tag_version) ? tag_version : "#{tag_version},#{match[1]}"
      end
    end
  end

  on_macos do
    sha256 arm:   "aea8f257638711e92b315def769906add50c66b483180ba1c39ec84804a6eafb",
           intel: "a63c975afaf9a1f51f6eb7cab489f6759d74fc2fbe331750d2c0089210c2eb85"

    auto_updates true

    app "Tolaria.app"

    uninstall quit: "club.refactoring.tolaria"

    zap trash: [
      "~/.config/com.tolaria.app",
      "~/Library/Application Support/com.tolaria.app",
      "~/Library/Caches/club.refactoring.tolaria",
      "~/Library/Preferences/club.refactoring.tolaria.plist",
      "~/Library/WebKit/club.refactoring.tolaria",
    ]
  end

  on_linux do
    sha256 "93b16afbf6c42ad9c50f877990bf055ae050d8b134cec7b1027f9e052a080d0c"

    depends_on arch: :x86_64

    app_image artifact, target: "Tolaria.AppImage"
  end
end
