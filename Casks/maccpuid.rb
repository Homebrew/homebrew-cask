cask "maccpuid" do
  version "3.1"
  sha256 :no_check

  url "https://software.intel.com/content/dam/develop/public/us/en/documents/maccpuid.zip"
  appcast "https://software.intel.com/content/www/us/en/develop/download/download-maccpuid.html"
  name "MacCPUID"
  desc "Displays information via the CPUID instruction"
  homepage "https://software.intel.com/content/www/us/en/develop/download/download-maccpuid"

  app "MacCPUID.app"

  zap trash: "~/Library/Caches/com.intel.MacCPUID"
end
