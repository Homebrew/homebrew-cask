cask "pppc-utility" do
  version "2.0.0"
  sha256 "acf3bf97f79f1a9cbd51b5bc13eb88e7608eb55a32b3e281042824b04a8a98c5"

  url "https://github.com/jamf/PPPC-Utility/releases/download/#{version}/PPPC-Utility.zip"
  name "PPPC Utility"
  name "Privacy Preferences Policy Control Utility"
  desc "Create configuration profiles containing a PPPC payload"
  homepage "https://github.com/jamf/PPPC-Utility"

  depends_on macos: :ventura

  app "PPPC Utility.app"

  uninstall quit: "com.jamf.opensource.pppcutility"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.jamf.opensource.pppcutility*",
    "~/Library/Containers/com.jamf.opensource.pppcutility",
  ]
end
