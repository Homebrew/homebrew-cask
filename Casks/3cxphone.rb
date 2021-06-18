cask "3cxphone" do
  version "16"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://downloads.3cx.com/downloads/3CXPhoneForMac#{version}.dmg"
  name "3CXPhone"
  desc "Office phone system"
  homepage "https://www.3cx.com/"

  livecheck do
    url "https://www.3cx.com/phone-system/download-links/"
    regex(/>\s*Download\s+3CX\s+V?(\d+(?:\.\d+)*)\s*</i)
  end

  app "3CXPhone.app"
end
