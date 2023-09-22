cask "ava" do
  version "2023-09-20"
  sha256 "5ab39cc015ab67d4432e5d410e765fa9451456cc376f9e9fd6851529a02dd16e"

  url "https://s3.amazonaws.com/www.avapls.com/Ava_#{version}.dmg",
      verified: "s3.amazonaws.com/www.avapls.com/"
  name "Ava"
  desc "Run language models locally on your computer"
  homepage "https://www.avapls.com/"

  livecheck do
    url :homepage
    regex(/href=.*?Ava[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  app "Ava.app"

  zap trash: [
    "~/Library/Application Support/AvaPLS",
    "~/Library/Caches/com.avapls.Ava-PLS",
    "~/Library/Preferences/com.avapls.Ava-PLS.plist",
    "~/Library/Saved Application State/com.avapls.Ava-PLS.savedState",
    "~/Library/WebKit/com.avapls.Ava-PLS",
  ]
end
