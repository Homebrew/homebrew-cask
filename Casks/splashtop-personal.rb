cask "splashtop-personal" do
  version "3.5.0.3"
  sha256 "f0c89f99e2dc07de9c68e64457cdbad509ac7cde303f3bd65e02adb9654e27b6"

  url "https://d17kmd0va0f0mp.cloudfront.net/macclient/STP/Splashtop_Personal_Mac_v#{version}.dmg",
      verified: "d17kmd0va0f0mp.cloudfront.net/"
  name "Splashtop Personal"
  desc "Connect to and control computers from desktop and mobile devices"
  homepage "https://www.splashtop.com/personal"

  livecheck do
    url "https://redirect.splashtop.com/stp-src/mac"
    strategy :header_match
  end

  pkg "Splashtop Personal.pkg"

  uninstall quit:    "com.splashtop.stp.macosx",
            pkgutil: "com.splashtop.stp.*"
end
