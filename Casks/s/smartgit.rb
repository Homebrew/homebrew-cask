cask "smartgit" do
  arch arm: "arm64", intel: "x86_64"

  version "26.1.051"
  sha256 arm:   "aa7a1b9188aee6df04aa2177ef74aba51b22cc6105291199ff26f3b68692f86f",
         intel: "9455e499a29a5aff06e5b0adf6bf27e76a3bdfe3709dc7f777c7440428283fb7"

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
