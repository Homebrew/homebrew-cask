cask "pppc-utility" do
  version "1.5.0"
  sha256 "208f066e176197424cbbf8dd0803e9407c800de621c322feb566d20b9f3be32c"

  url "https://github.com/jamf/PPPC-Utility/releases/download/#{version}/PPPC-Utility.zip"
  name "PPPC Utility"
  name "Privacy Preferences Policy Control Utility"
  desc "Create configuration profiles containing a PPPC payload"
  homepage "https://github.com/jamf/PPPC-Utility"

  depends_on macos: ">= :catalina"

  app "PPPC Utility.app"

  uninstall quit: "com.jamf.opensource.pppcutility"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.jamf.opensource.pppcutility*",
    "~/Library/Containers/com.jamf.opensource.pppcutility",
  ]
end
