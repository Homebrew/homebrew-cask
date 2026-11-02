cask "tolaria" do
  arch arm: "Silicon", intel: on_system_conditional(macos: "Intel", linux: "amd64")
  os macos: "_macOS_#{arch}.dmg", linux: "_#{arch}.AppImage"

  version "2026.11.02,2026.11.2"
  sha256 arm:          "6b2fb98a869efb5f7b363636d8beb033ea9bacaa4c2e7f242be67e5c83ecd4a4",
         intel:        "6e7708961aa266a64859655bf5676a0d52bea0102a479b52f05f2183f928f363",
         x86_64_linux: "a106af107acf6c058d4fda047f286de05aa4fe7fa19356e4a27ad80a793fd786"

  on_macos do
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
    depends_on arch: :x86_64

    app_image "Tolaria_#{version.csv.second || version}_#{arch}.AppImage", target: "Tolaria.AppImage"

    zap trash: [
      "~/.config/com.tolaria.app",
      "~/.local/share/applications/tolaria-handler.desktop",
      "~/.local/share/club.refactoring.tolaria",
      "~/.local/share/tolaria",
    ]
  end

  url "https://github.com/refactoringhq/tolaria/releases/download/v#{version.csv.first.dots_to_hyphens}/Tolaria_#{version.csv.second || version}#{os}"
  name "Tolaria"
  desc "Markdown knowledgebase manager"
  homepage "https://tolaria.md/"

  # The version formatting in the tag name can be inconsistent
  # with the version in the asset name, so we need to compare
  # both and return them in the version if they don't match.
  livecheck do
    url :url
    regex(/Tolaria[._-]v?(\d+(?:\.\d+)+)#{os}/i)
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
end
