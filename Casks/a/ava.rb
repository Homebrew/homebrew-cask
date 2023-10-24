cask "ava" do
  version "2023-10-20"
  sha256 "bd11bb22ffcee8b8d0d953e12c3b72145ee114f14ab3ede313ccc68d07079f35"

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
