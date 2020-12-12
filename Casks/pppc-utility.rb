cask "pppc-utility" do
  version "1.3.0"
  sha256 "95353ed47703578061e8a0ff5b168b467632fee1d0e01ee3851147279d0fc40e"

  url "https://github.com/jamf/PPPC-Utility/releases/download/#{version}/PPPC-Utility.zip"
  appcast "https://github.com/jamf/PPPC-Utility/releases.atom"
  name "PPPC Utility"
  name "Privacy Preferences Policy Control Utility"
  desc "Create configuration profiles containing a PPPC payload"
  homepage "https://github.com/jamf/PPPC-Utility"

  depends_on macos: ">= :catalina"

  app "PPPC Utility.app"

  uninstall quit: "com.jamf.opensource.pppcutility"
end
