cask "pppc-utility" do
  version "1.4.0"
  sha256 "5cbe30b38327e2d77511c5a7634aebb17c484161a60d594de8aeaa17ff00f896"

  url "https://github.com/jamf/PPPC-Utility/releases/download/#{version}/PPPC.Utility.zip"
  name "PPPC Utility"
  name "Privacy Preferences Policy Control Utility"
  desc "Create configuration profiles containing a PPPC payload"
  homepage "https://github.com/jamf/PPPC-Utility"

  depends_on macos: ">= :catalina"

  app "PPPC Utility.app"

  uninstall quit: "com.jamf.opensource.pppcutility"
end
