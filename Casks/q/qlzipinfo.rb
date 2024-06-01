cask "qlzipinfo" do
  version "1.2.6"
  sha256 "d8c105a4c642b5cb1b21a9c40adc2b3bb85851687757908374d71dd2fd984354"

  url "https://github.com/srirangav/qlZipInfo/releases/download/v.#{version}/qlZipInfo-#{version}.dmg"
  name "qlzipinfo"
  desc "List out the contents of a zip file in the QuickLook preview"
  homepage "https://github.com/srirangav/qlZipInfo"

  depends_on macos: ">= :high_sierra"

  qlplugin "qlZipInfo.qlgenerator"

  # No zap stanza required
end
