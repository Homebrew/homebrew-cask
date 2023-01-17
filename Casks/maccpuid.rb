cask "maccpuid" do
  version "3.2"
  sha256 :no_check

  url "https://software.intel.com/content/dam/develop/public/us/en/documents/maccpuid.zip"
  name "MacCPUID"
  desc "Displays information via the CPUID instruction"
  homepage "https://software.intel.com/content/www/us/en/develop/download/download-maccpuid"

  livecheck do
    url "https://software.intel.com/content/www/us/en/develop/download/download-maccpuid.html"
    regex(/name="DownloadVersion"\s+content="v?(\d+(?:\.\d+)+)[ "<]/i)
  end

  app "MacCPUID.app"

  zap trash: "~/Library/Caches/com.intel.MacCPUID"
end
