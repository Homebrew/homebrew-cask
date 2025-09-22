cask "smartgit" do
  arch arm: "aarch64", intel: "x86_64"

  version "24.1.5"
  sha256 arm:   "036c1df4939b53ffe8a3f8558bfe9f7484159d018959c3b3fa1592e695a27635",
         intel: "bc108b9fe01323d8d795545423221e89e72c07414ebc7eca96cb807c4ada5c49"

  url "https://www.syntevo.com/downloads/smartgit/smartgit-#{arch}-#{version.dots_to_underscores}.dmg"
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
