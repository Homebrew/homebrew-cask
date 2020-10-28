cask "splice" do
  version "3.6.5"
  sha256 "8b7904e4caa291b7657b0464d4dfb2cfb0ee24f633eb04f486b56fedfbcfa006"

  # splicedesktop.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://splicedesktop.s3.amazonaws.com/darwin/stable/Splice.app.zip"
  appcast "https://api.splice.com/v2/desktop/darwin/stable/latest?v=0.0.0"
  name "Splice"
  homepage "https://splice.com/"

  app "Splice.app"

  uninstall quit: "com.splice.Splice"

  zap trash: [
    "~/Library/Application Support/*Splice*",
    "~/Library/Caches/com.splice*",
    "~/Library/Preferences/com.splice*",
  ]
end
