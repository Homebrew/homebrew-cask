cask "smartgit" do
  arch arm: "aarch64", intel: "x86_64"

  on_sierra :or_older do
    version "20.2.6"
    sha256 "af5fbf8db26edde3d996d99c6e82287332598359fe63ff2cd97c712a1685a2ea"

    url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  end
  on_high_sierra :or_newer do
    version "22.1.6"
    sha256 arm:   "daef35df4000326aabfc9ac4590516089a3bb8c8b6e0abb427d8366e05a85d79",
           intel: "16675f089374533e30a7a6314b6c7ffeae8d016d8b8dd334ca990a56c5f97566"

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
    "~/Library/Preferences/SmartGit",
    "~/Library/Preferences/com.syntevo.smartgit.plist",
    "~/Library/Saved Application State/com.syntevo.smartgit.savedState",
  ]
end
