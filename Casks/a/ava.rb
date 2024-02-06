cask "ava" do
  version "2024-02-05"
  sha256 "80fa65eb856b286c68c14d58b5c8e9fc9cf2e483fbb8bbe51239133466287fb5"

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
