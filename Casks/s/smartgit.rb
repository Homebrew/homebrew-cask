cask "smartgit" do
  arch arm: "arm64", intel: "x86_64"

  version "26.1.036"
  sha256 arm:   "af685c049558a6e1bff905db78691cbe376c5beffe64434250d457fac59ec365",
         intel: "ab7d53ba786493673a79b8690fc8ba45f66af10a31252c46b3461e70f862e40f"

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
