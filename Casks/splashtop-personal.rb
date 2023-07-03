cask "splashtop-personal" do
  version "3.5.8.1"
  sha256 "9901c4f5f41ee9e5c620953b0c0a8f978bf3a68f96ba722d55354c926582e3bf"

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

  zap trash: [
    "~/Library/Application Support/Splashtop Personal",
    "~/Library/Caches/com.splashtop.stp.macosx",
    "~/Library/HTTPStorages/com.splashtop.stp.macosx",
    "~/Library/Preferences/com.splashtop.stp.macosx.plist",
  ]
end
