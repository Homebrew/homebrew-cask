cask "tolaria" do
  arch arm: "Silicon", intel: on_system_conditional(macos: "Intel", linux: "amd64")
  os macos: "_macOS_#{arch}.dmg", linux: "_#{arch}.AppImage"

  version "2026.11.10"
  sha256 arm:          "c0a625424a5ac69c917705bf57bd36d6e49378bd16ebb70ec8a060595c64803b",
         intel:        "be216fde132b9a9973859698935b216d89f9d74741073b465e71964d9f90b5da",
         x86_64_linux: "2aaf67ad58693dd38eca7d2eff7179e7cd9e25b446caaae81a0ec3252f229084"

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
