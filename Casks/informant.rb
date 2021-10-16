cask "informant" do
  version "0.08.9.1"
  sha256 "6e140462b09a9cc1f859fca06ab2e6efa8c5b2b3f7b7f4271b869516221ca8fd"

  url "https://github.com/tyirvine/Informant/releases/download/#{version}/Informant.zip",
      verified: "https://github.com/tyirvine/Informant/"
  name "Informant"
  desc "Inspect files with a single click"
  homepage "https://informant-app.com/"

  app "Informant.app"

  zap trash: [
    "~/Library/Application Scripts/com.tyirvine.Informant",
    "~/Library/Containers/com.tyirvine.Informant",
    "~/Library/Preferences/com.tyirvine.Informant.plist",
  ]
end
