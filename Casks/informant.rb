cask "informant" do
  version "0.09.2"
  sha256 "52b97597e3c5798b886137028644dc7de3bbe85b745c6582ff05b580898cb620"

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
