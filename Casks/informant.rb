cask "informant" do
  version "0.09.3"
  sha256 "8463bd9220224fd37ff07c5ec2fcd0ea3ca24f8e92622a7b38199f031b27f452"

  url "https://github.com/tyirvine/Informant/releases/download/#{version}/Informant.zip",
      verified: "https://github.com/tyirvine/Informant/"
  name "Informant"
  desc "Inspect files with a single click"
  homepage "https://informant-app.com/"

  depends_on macos: ">= :big_sur"

  app "Informant.app"

  zap trash: [
    "~/Library/Application Scripts/com.tyirvine.Informant",
    "~/Library/Containers/com.tyirvine.Informant",
    "~/Library/Preferences/com.tyirvine.Informant.plist",
  ]
end
