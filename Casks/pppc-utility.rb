cask "pppc-utility" do
  version "1.4.0"
  sha256 "3f13545c353c96e6974ceeee017ffb9aaed0d6ff5e230de9a3c798321e2ca8ed"

  url "https://github.com/jamf/PPPC-Utility/releases/download/#{version}/PPPC.Utility.zip"
  name "PPPC Utility"
  name "Privacy Preferences Policy Control Utility"
  desc "Create configuration profiles containing a PPPC payload"
  homepage "https://github.com/jamf/PPPC-Utility"

  depends_on macos: ">= :catalina"

  app "PPPC Utility.app"

  uninstall quit: "com.jamf.opensource.pppcutility"
end
