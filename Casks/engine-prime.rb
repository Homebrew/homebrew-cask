cask "engine-prime" do
  version "1.5.1"
  sha256 "a9117a95294515ea70cc4d04715f2a1fe15ead39fe7a7faecdddb3695f69112f"

  # inmusicbrands.com/ was verified as official when first introduced to the cask
  url "https://cdn.inmusicbrands.com/denondj/ep#{version.major_minor.no_dots}/eos/Engine_Prime_#{version}_Setup.dmg"
  name "Engine Prime"
  homepage "https://www.denondj.com/engineprime"

  pkg "Engine Prime_#{version}_Setup.pkg"

  uninstall pkgutil: "com.airmusictechnology.engineprime.application"

  zap trash: "~/Music/Engine Library"
end
