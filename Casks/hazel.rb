cask "hazel" do
  version "4.4.5"
  sha256 "19f0a193831b8d61b8b3a5e87ab08e5295e4e7680d13615ed5b14b34f60c3cef"

  # s3.amazonaws.com/Noodlesoft/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Noodlesoft/Hazel-#{version}.dmg"
  appcast "https://www.noodlesoft.com/Products/Hazel/generate-appcast.php"
  name "Hazel"
  homepage "https://www.noodlesoft.com/"

  auto_updates true

  prefpane "Install Hazel.app/Contents/Resources/Hazel.prefPane"

  uninstall quit: "com.noodlesoft.HazelHelper"

  zap trash: [
    "~/Library/Logs/Hazel",
    "~/Library/Application Support/Hazel",
    "~/Library/Preferences/com.noodlesoft.Hazel.plist",
    "~/Library/Preferences/com.noodlesoft.HazelHelper.plist",
  ]
end
