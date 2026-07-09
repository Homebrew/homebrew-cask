cask "tolaria" do
  arch arm: "Silicon", intel: "Intel"

  version "2026.07.09,2026.7.9"

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
    sha256 arm:   "71f2bb20adc70a7238be8ec4a7d0dc74d8ddc262238448c9fdbb8c3a447297c8",
           intel: "9f9f6ad08cd4ff2cc0060dc55377c9f91130cdd2699eb5a83b740b6fa1ebde71"

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
    sha256 "807255964558af0e199d6495bda144ae37d1e87dbf2fa9aa3e2758bb85f41e62"

    depends_on arch: :x86_64

    app_image artifact, target: "Tolaria.AppImage"
  end
end
