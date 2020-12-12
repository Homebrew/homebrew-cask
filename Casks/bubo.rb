cask "bubo" do
  version "1.0"
  sha256 :no_check

  url "https://jguice.s3.amazonaws.com/mac-bt-headset-fix-beta/bubo.app.zip",
      verified: "jguice.s3.amazonaws.com/mac-bt-headset-fix-beta/"
  name "Bubo"
  name "Spotify Bluetooth Headset Listener"
  homepage "https://github.com/jguice/mac-bt-headset-fix"

  depends_on macos: ">= :sierra"

  app "bubo.app"
end
