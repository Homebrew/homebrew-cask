cask "smartgit" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.1.1"
  sha256 arm:   "9ef88e84769a3ea696a6d18515f6ed3710f85014c3eff9fe177eae1d28e7c94b",
         intel: "bcd01e38b81a12bb4c740728c2ba3d7988e5b9e0ef01f98aa71a18903eee8d67"

  url "https://www.syntevo.com/downloads/smartgit/smartgit-#{arch}-#{version.dots_to_underscores}.dmg"

  on_sierra :or_older do
    version "20.2.6"
    sha256 "af5fbf8db26edde3d996d99c6e82287332598359fe63ff2cd97c712a1685a2ea"

    url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
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
end
