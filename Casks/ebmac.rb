cask "ebmac" do
  version "1.45.1"
  sha256 "91f454e709607ae8b397b13e4201adc4add8e80394969918218fc097831f3c73"

  # ftp.vector.co.jp/72/54/938/ was verified as official when first introduced to the cask
  url "https://ftp.vector.co.jp/72/54/938/EBMac#{version}.dmg"
  appcast "http://ebstudio.info/manual/EBMac/"
  name "EBMac"
  homepage "http://ebstudio.info/manual/EBMac/"

  app "EBMac.app"
end
