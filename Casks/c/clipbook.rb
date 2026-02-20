cask "clipbook" do
  arch arm: "arm64", intel: "x64"

  version "1.33.1"
  sha256 arm:   "1637fec74d7f87b34466d7b3d6ecc62ddf4e2b3299ee43006fe05d8ebdbd1d48",
         intel: "7fc8e4da595ae7edb2d2b976d779267b1d3fbc91ef023846e42ffd2bd19c1dbf"

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
