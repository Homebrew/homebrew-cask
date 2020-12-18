cask "ebmac" do
  version "1.45.1"
  sha256 "91f454e709607ae8b397b13e4201adc4add8e80394969918218fc097831f3c73"

  url "https://ftp.vector.co.jp/72/54/938/EBMac#{version}.dmg",
      verified: "ftp.vector.co.jp/72/54/938/"
  appcast "http://ebstudio.info/manual/EBMac/"
  name "EBMac"
  homepage "http://ebstudio.info/manual/EBMac/"

  app "EBMac.app"
end
