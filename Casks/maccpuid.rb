cask "maccpuid" do
  version "3.1"
  sha256 "f0546d65372c15fdf88c4bbfb625a4002136704a2839ab8c1f90dae68548eb46"

  url "https://software.intel.com/sites/default/files/MacCPUID.zip"
  appcast "https://software.intel.com/en-us/download/download-maccpuid"
  name "MacCPUID"
  homepage "https://software.intel.com/en-us/download/download-maccpuid"

  app "MacCPUID.app"

  zap trash: "~/Library/Caches/com.intel.MacCPUID"
end
