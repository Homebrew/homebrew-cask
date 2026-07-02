cask "tolaria" do
  arch arm: "Silicon", intel: "Intel"

  version "2026.07.01,2026.7.1"

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
    sha256 arm:   "905dfdf7f778413d55dcd8a247e1ba38c517e6c458b22d97145da45d68c46b53",
           intel: "7ab73513cf5ff6768c2ce5981632b940eb1a165b041230e72314f250598fdb3f"

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
    sha256 "2faaa5e752ac04d64511d8b2661309811afe6d718aba5e220cf70a74d493cdb8"

    depends_on arch: :x86_64

    app_image artifact, target: "Tolaria.AppImage"
  end
end
