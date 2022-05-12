cask "splashtop-personal" do
  version "3.4.8.5"
  sha256 "80b8c3171d796daf8ccb46e9f9b1ff5f519ba297202ace383d99080ce8625668"

  url "https://d17kmd0va0f0mp.cloudfront.net/macclient/STP/Splashtop_Personal_Mac_v#{version}.dmg",
      verified: "d17kmd0va0f0mp.cloudfront.net/"
  name "Splashtop Personal"
  desc "Connect to and control computers from desktop and mobile devices"
  homepage "https://www.splashtop.com/personal"

  livecheck do
    url "https://www.splashtop.com/wp-content/themes/responsive/downloadx.php?product=stp&platform=mac-client"
    regex(/v(\d+(?:\.\d+)+)\.dmg/i)
  end

  pkg "Splashtop Personal.pkg"

  uninstall quit:    "com.splashtop.stp.macosx",
            pkgutil: "com.splashtop.stp.*"
end
