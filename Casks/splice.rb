cask "splice" do
  version "3.6.5"
  sha256 :no_check

  # splicedesktop.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://splicedesktop.s3.amazonaws.com/darwin/stable/Splice.app.zip"
  appcast "https://api.splice.com/v2/desktop/darwin/stable/latest?v=0.0.0"
  name "Splice"
  desc "Cloud-based music creation and collaboration platform"
  homepage "https://splice.com/"

  app "Splice.app"

  uninstall quit: "com.splice.Splice"

  zap trash: [
    "~/Library/Application Support/*Splice*",
    "~/Library/Caches/com.splice*",
    "~/Library/Preferences/com.splice*",
  ]
end
