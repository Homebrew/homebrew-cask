cask "jamf-pppc-utility" do
  version "2.0.0"
  sha256 "acf3bf97f79f1a9cbd51b5bc13eb88e7608eb55a32b3e281042824b04a8a98c5"

  url "https://github.com/jamf/PPPC-Utility/releases/download/#{version}/PPPC-Utility.zip"
  name "PPPC Utility"
  desc "Builds privacy preferences policy control profiles"
  homepage "https://github.com/jamf/PPPC-Utility"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "PPPC Utility.app"

  zap trash: [
    "~/Library/Caches/com.jamf.opensource.pppcutility",
    "~/Library/HTTPStorages/com.jamf.opensource.pppcutility",
    "~/Library/Preferences/com.jamf.opensource.pppcutility.plist",
    "~/Library/Saved Application State/com.jamf.opensource.pppcutility.savedState",
  ]
end
