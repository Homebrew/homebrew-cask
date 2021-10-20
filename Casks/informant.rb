cask "informant" do
  version "0.09.1"
  sha256 "1a3cb6c1bba2f8efba1bf123a3c40e4ad292daae155bb38737a22106898acb87"

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
