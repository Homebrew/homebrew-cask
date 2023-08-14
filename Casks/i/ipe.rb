cask "ipe" do
  arch arm: "arm", intel: "intel"

  version "7.2.28"
  sha256 arm:   "4e0b94f24fe2478899a4aae2a5fa53e88dd13cfb6286d46be3afb574efa525da",
         intel: "2de5402c14cc8bbfcc3f6ea45a3712c5cfac928aeabf506d0673aecbb6884ff7"

  url "https://github.com/otfried/ipe/releases/download/v#{version}/ipe-#{version}-mac-#{arch}.dmg",
      verified: "github.com/otfried/ipe/"
  name "Ipe"
  desc "Drawing editor for creating figures in PDF format"
  homepage "https://ipe.otfried.org/"

  livecheck do
    url :homepage
    regex(/href=.*?ipe[._-](\d+(?:\.\d+)+)[._-]mac[._-]#{arch}\.dmg/i)
  end

  app "Ipe.app"

  zap trash: [
    "~/.ipe",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.otfried.ipe.ipe.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.otfried.ipe.sfl*",
    "~/Library/Preferences/org.otfried.ipe.Ipe.plist",
    "~/Library/Saved Application State/org.otfried.ipe.savedState",
  ]
end
