cask "splashtop-personal" do
  version "3.4.0.1"
  sha256 "466fa2dd26e41f43e43019f1c817e703e1e29cd9451fbd5c4c0d48da58df3825"

  # d17kmd0va0f0mp.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d17kmd0va0f0mp.cloudfront.net/macclient/STP/Splashtop_Personal_v#{version}.dmg"
  appcast "https://www.splashtop.com/wp-content/themes/responsive/downloadx.php?product=stp&platform=mac-client"
  name "Splashtop Personal"
  homepage "https://www.splashtop.com/personal"

  pkg "Splashtop Personal.pkg"

  uninstall pkgutil: "com.splashtop.stp.*"
end
