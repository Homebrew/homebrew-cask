cask "ava" do
  version "2023-12-05"
  sha256 "3ebe48fd38a09b8de8a85839e588317bfd902f19bd6b4c16a7eba8bdf9baba11"

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
