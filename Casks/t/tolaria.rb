cask "tolaria" do
  arch arm: "Silicon", intel: on_system_conditional(macos: "Intel", linux: "amd64")
  os macos: "_macOS_#{arch}.dmg", linux: "_#{arch}.AppImage"

  version "2026.11.06,2026.11.6"
  sha256 arm:          "fcd8b487455b0f5f49839b4c35713364eb85d5debae4909d4f54aa2e670a3d8d",
         intel:        "ff225583f2d88f4da08f62435d3141608813a37c40781c0e2ad3d4a27c4ad137",
         x86_64_linux: "58207e63ba0e35dd9bcb00a61616d70e0c855ca411897623c6b342e3da1b27a3"

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
