cask "clipbook" do
  arch arm: "arm64", intel: "x64"

  version "1.33.0"
  sha256 arm:   "b8ddec4532924178ce5bce8fa01d7582725d8b642679b8951f59f3607b1d8fbb",
         intel: "d57a454a9222529690f2e2990f89d9e137f41c1e8739c9f4da8e79a52926951f"

  url "https://f005.backblazeb2.com/file/clipbook/ClipBook-#{version}-#{arch}.dmg",
      verified: "f005.backblazeb2.com/file/clipbook/"
  name "ClipBook"
  desc "Clipboard history app"
  homepage "https://clipbook.app/"

  livecheck do
    url "https://clipbook.app/downloads/mac/#{arch}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :monterey"

  app "ClipBook.app"

  zap trash: [
    "~/Library/Application Support/ClipBook",
    "~/Library/Caches/ClipBook",
    "~/Library/HTTPStorages/com.ikryanov.clipbook",
    "~/Library/Preferences/com.ikryanov.clipbook.plist",
    "~/Library/Saved Application State/com.ikryanov.clipbook.savedState",
  ]
end
