cask "splice" do
  version "3.6.5,20201015.a23ba6253"
  sha256 :no_check

  url "https://splicedesktop.s3.amazonaws.com/darwin/stable/Splice.app.zip",
      verified: "splicedesktop.s3.amazonaws.com/"
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
