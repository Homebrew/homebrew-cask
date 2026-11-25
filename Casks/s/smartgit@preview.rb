cask "smartgit@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "26.2.025,rc"
  sha256 arm:   "2d6ba7977034f32732ae489e1b18b6df012f010002695dbda58f97c0a0ca246a",
         intel: "fda474f9983015ce74512575728b90e7c778b32a3f293974069b42401191ac7c"

  url "https://download.smartgit.dev/smartgit/smartgit-#{version.csv.first.dots_to_underscores}-#{version.csv.second}-macos-#{arch}.dmg"
  name "SmartGit"
  desc "Git client"
  homepage "https://www.smartgit.dev/"

  livecheck do
    url "https://www.smartgit.dev/download/preview/"
    regex(/href=.*?smartgit[._-]v?(\d+(?:[._]\d+)+)[._-](preview|rc)(?:[._-]macos)?[._-]#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        upstream_version = match[0].tr("_", ".")
        "#{upstream_version},#{match[1]}"
      end
    end
  end

  conflicts_with cask: "smartgit"
  depends_on :macos

  app "SmartGit.app"
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"

  zap trash: [
    "~/Library/Preferences/com.syntevo.smartgit.plist",
    "~/Library/Preferences/SmartGit",
    "~/Library/Saved Application State/com.syntevo.smartgit.savedState",
  ]
end
