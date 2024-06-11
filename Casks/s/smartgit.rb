cask "smartgit" do
  arch arm: "aarch64", intel: "x86_64"

  on_sierra :or_older do
    version "20.2.6"
    sha256 "af5fbf8db26edde3d996d99c6e82287332598359fe63ff2cd97c712a1685a2ea"

    url "https://www.syntevo.com/downloads/smartgit/archive/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  end
  on_high_sierra do
    version "22.1.8"
    sha256 "d98688ee937bbc02c17e08f7d300c6f3e237cb638b64c46944f46895812ed679"

    url "https://www.syntevo.com/downloads/smartgit/archive/smartgit-#{arch}-#{version.dots_to_underscores}.dmg"
  end
  on_mojave :or_newer do
    version "23.1.3"
    sha256 arm:   "717ec021fdba69871db8bf75252f17f0314fc10b8c007c49483257efc093adfa",
           intel: "8c131142c7a1c93ba70a4ebc9f120b6c2dfdc87ebc94ef22b3feb688768888af"

    url "https://www.syntevo.com/downloads/smartgit/smartgit-#{arch}-#{version.dots_to_underscores}.dmg"
  end

  name "SmartGit"
  desc "Git client"
  homepage "https://www.syntevo.com/smartgit/"

  livecheck do
    url "https://www.syntevo.com/smartgit/download/"
    regex(/href=.*?smartgit[._-]#{arch}[._-]v?(\d+(?:[._]\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex)
          .map { |match| match[0].tr("_", ".") }
    end
  end

  app "SmartGit.app"
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"

  zap trash: [
    "~/Library/Preferences/com.syntevo.smartgit.plist",
    "~/Library/Preferences/SmartGit",
    "~/Library/Saved Application State/com.syntevo.smartgit.savedState",
  ]
end
