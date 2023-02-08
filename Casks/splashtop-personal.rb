cask "splashtop-personal" do
  version "3.5.2.3"
  sha256 "0292f2f50864bee7db06cbdce5be833cd8de13a203594a5e26ce43236b4c95da"

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
