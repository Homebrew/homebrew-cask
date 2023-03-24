cask "switch" do
  version "11.00"
  sha256 :no_check

  url "https://www.nch.com.au/components/switchmaci.zip"
  name "Switch Audio Converter"
  desc "Multiple format audio file converter"
  homepage "https://www.nch.com.au/switch/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Switch.app"
end
