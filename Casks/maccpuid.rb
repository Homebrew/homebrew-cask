cask "maccpuid" do
  version "3.1"
  sha256 :no_check

  url "https://software.intel.com/sites/default/files/MacCPUID.zip"
  appcast "https://software.intel.com/en-us/download/download-maccpuid"
  name "MacCPUID"
  homepage "https://software.intel.com/en-us/download/download-maccpuid"

  app "MacCPUID.app"

  zap trash: "~/Library/Caches/com.intel.MacCPUID"
end
