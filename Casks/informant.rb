cask "informant" do
  version "0.09.4"
  sha256 "072d26903902652e6c8eae3b36e611675d95baaa11dd7c29c7664c854776bda0"

  url "https://github.com/tyirvine/Informant/releases/download/#{version}/Informant.zip"
  name "Informant"
  desc "Inspect files with a single click"
  homepage "https://github.com/tyirvine/Informant/"

  depends_on macos: ">= :big_sur"

  app "Informant.app"

  zap trash: [
    "~/Library/Application Scripts/com.tyirvine.Informant",
    "~/Library/Containers/com.tyirvine.Informant",
    "~/Library/Preferences/com.tyirvine.Informant.plist",
  ]
end
