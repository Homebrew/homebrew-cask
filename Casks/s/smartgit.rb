cask "smartgit" do
  arch arm: "aarch64", intel: "x86_64"

  on_sierra :or_older do
    version "20.2.6"
    sha256 "af5fbf8db26edde3d996d99c6e82287332598359fe63ff2cd97c712a1685a2ea"

    url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  end
  on_high_sierra :or_newer do
    version "23.1.0"
    sha256 arm:   "29bff333c3fc13d292c65b364306f22c76cb2b78a789e40a41997c4b75aa3fec",
           intel: "13f215cee00a3d6d42e0a52719345426afa24ab68c0c127ba12e5bdf24fecfeb"

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
