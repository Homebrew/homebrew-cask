cask "tolaria" do
  arch arm: "Silicon", intel: "Intel"

  version "2026.07.22,2026.7.22"

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
    sha256 arm:   "cb8f5997868fc42aba31b67e154c02a86f046ca53ee98a2d48b3385cb2c902c4",
           intel: "f0bc4bebec34293de42ad8ca113c5a4a5b18c59719e6b847c42d261b86d2f4e7"

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
    sha256 "6893d455572b42f095acfa3041673005ddb6e84852e3f3f3c7c2ab8d5ef6b7c1"

    depends_on arch: :x86_64

    app_image artifact, target: "Tolaria.AppImage"
  end
end
