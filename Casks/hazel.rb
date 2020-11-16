cask "hazel" do
  version "5.0"
  sha256 "4225675205e7780fa78d7824a825bda7e2cc21ee856a6855401953dd231e15b9"

  # s3.amazonaws.com/Noodlesoft/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Noodlesoft/Hazel-#{version}.dmg"
  appcast "https://www.noodlesoft.com/Products/Hazel/generate-appcast.php"
  name "Hazel"
  desc "Automated organization"
  homepage "https://www.noodlesoft.com/"

  app "Hazel.app"

  zap trash: [
    "~/Library/Logs/Hazel",
    "~/Library/Application Support/Hazel",
    "~/Library/Preferences/com.noodlesoft.Hazel.plist",
    "~/Library/Preferences/com.noodlesoft.HazelHelper.plist",
  ]
end
