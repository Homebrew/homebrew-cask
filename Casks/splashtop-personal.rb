cask "splashtop-personal" do
  version "3.4.6.1"
  sha256 "39e202c3a5376256d55ca26ef6bd6d5aca046039251fec077e5d094e087f8b0e"

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
