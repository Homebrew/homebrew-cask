cask "informant" do
  version "0.08.7"
  sha256 "3a0213323f2e7c41ae9e67c7333252c26b4dbf85e02f28b73ce8b0cd17ce34b5"

  url "https://github.com/tyirvine/Informant/releases/download/#{version}/Informant.zip",
      verified: "github.com/tyirvine/Informant/"
  name "informant"
  desc "Inspect files with a single click"
  homepage "https://informant-app.com/"

  app "Informant.app"

  zap trash: [
    "~/Library/Application Scripts/com.tyirvine.Informant",
    "~/Library/Containers/com.tyirvine.Informant",
    "~/Library/Preferences/com.tyirvine.Informant.plist",
  ]
end
