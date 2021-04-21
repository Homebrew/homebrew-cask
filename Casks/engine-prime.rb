cask "engine-prime" do
  version "1.6.0"
  sha256 "49927e5500f7ebef12087d8cf38f4848925eeb1d949203307b8b9833a4a53c1f"

  url "https://cdn.inmusicbrands.com/denondj/EnginePrime/Engine_Prime_#{version}_Setup.dmg",
      verified: "inmusicbrands.com/"
  name "Engine Prime"
  desc "Music Management Software for Denon's Engine OS Hardware"
  homepage "https://www.denondj.com/engineprime"

  pkg "Engine Prime_#{version}_Setup.pkg"

  uninstall pkgutil: "com.airmusictechnology.engineprime.application"

  zap trash: "~/Music/Engine Library"
end
