cask "bubo" do
  version "1.0"
  sha256 :no_check

  # jguice.s3.amazonaws.com/mac-bt-headset-fix-beta/ was verified as official when first introduced to the cask
  url "https://jguice.s3.amazonaws.com/mac-bt-headset-fix-beta/bubo.app.zip"
  name "Bubo"
  name "Spotify Bluetooth Headset Listener"
  homepage "https://github.com/jguice/mac-bt-headset-fix"

  depends_on macos: ">= :sierra"

  app "bubo.app"
end
