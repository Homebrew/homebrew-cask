cask "smartgit" do
  arch arm: "arm64", intel: "x86_64"

  version "26.1.037"
  sha256 arm:   "141066ffd4d459542214059cf9ab4538335050ba552cd5a52e1caed1f6868035",
         intel: "44ea0ac6a31dd3ce814cbd34b7f81a4d7f78fd2af3377383a80f987b77a33aa7"

  url "https://download.smartgit.dev/smartgit/smartgit-#{version.dots_to_underscores}-macos-#{arch}.dmg"
  name "SmartGit"
  desc "Git client"
  homepage "https://www.smartgit.dev/"

  livecheck do
    url "https://www.smartgit.dev/download/"
    regex(/href=.*?smartgit[._-]v?(\d+(?:[._]\d+)+)(?:[._-]macos)?[._-]#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  depends_on macos: :big_sur

  app "SmartGit.app"
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"

  zap trash: [
    "~/Library/Preferences/com.syntevo.smartgit.plist",
    "~/Library/Preferences/SmartGit",
    "~/Library/Saved Application State/com.syntevo.smartgit.savedState",
  ]
end
