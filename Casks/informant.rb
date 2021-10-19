cask "informant" do
  version "0.09.0"
  sha256 "0c2a54a94693520b58d23d1308469250f36553d5de371b678d3eb7ece79a5faa"

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
