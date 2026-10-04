cask "hicapture" do
  version "1.0.0"
  sha256 "600963b556d8c17d0669692e9dfc2aec220bc919040e305485c361e253543e2f"

  url "https://hi-capture.com/assets/releases/hicapture-#{version}-macos.zip"
  name "HiCapture"
  desc "Screenshot and screen recording tool with an annotation editor"
  homepage "https://hi-capture.com/"

  livecheck do
    url "https://hi-capture.com/en"
    regex(/href=.*?hicapture[._-]v?(\d+(?:\.\d+)+)[._-]macos\.zip/i)
  end

  depends_on macos: :sonoma

  app "HiCapture.app"

  uninstall quit: "com.flate.hicapture"

  zap trash: [
    "~/Library/Application Support/com.flate.hicapture",
    "~/Library/Caches/com.flate.hicapture",
    "~/Library/Preferences/com.flate.hicapture.plist",
    "~/Library/WebKit/com.flate.hicapture",
  ]
end
