cask "smartgit" do
  arch arm: "arm64", intel: "x86_64"

  version "25.1.109"
  sha256 arm:   "3ad381e7d85b6baacf335f6591be73ab275459724ea589c8c03a78431514042a",
         intel: "57416e9ecf8a12a5870587626e7b8f5e088e65258f3a0981467d6e256ebc3a97"

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

  depends_on macos: ">= :big_sur"

  app "SmartGit.app"
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"

  zap trash: [
    "~/Library/Preferences/com.syntevo.smartgit.plist",
    "~/Library/Preferences/SmartGit",
    "~/Library/Saved Application State/com.syntevo.smartgit.savedState",
  ]
end
