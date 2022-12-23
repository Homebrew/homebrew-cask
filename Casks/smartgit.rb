cask "smartgit" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.1.2"
  sha256 arm:   "416c59f564ba127796f140132a40d73b7c2bfc6acaca83905917709fb4b291df",
         intel: "ab147fcbae958e8f5562c2edeb4555010c72b47d9da39d9df1278d61772a1eda"

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
