cask "ava" do
  version "2024-03-20"
  sha256 "266bea1f571dc778292efe1600c77a79ebd58f16e673dba61dae694e132e1398"

  url "https://s3.amazonaws.com/www.avapls.com/Ava_#{version}.dmg",
      verified: "s3.amazonaws.com/www.avapls.com/"
  name "Ava"
  desc "Run language models locally on your computer"
  homepage "https://avapls.com/"

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
