cask "pppc-utility" do
  version "1.2.1"
  sha256 "a409e87d65596192206d6cf230efd3b405b3124782438c32426653b00fe15835"

  url "https://github.com/jamf/PPPC-Utility/releases/download/#{version}/PPPC-Utility.zip"
  appcast "https://github.com/jamf/PPPC-Utility/releases.atom"
  name "PPPC Utility"
  name "Privacy Preferences Policy Control Utility"
  homepage "https://github.com/jamf/PPPC-Utility"

  depends_on macos: ">= :high_sierra"

  app "PPPC Utility.app"

  uninstall quit: "com.jamf.opensource.pppcutility"
end
