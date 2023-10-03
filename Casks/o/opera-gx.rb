cask "opera-gx" do
  version "102.0.4880.90"
  sha256 "ea26dc8c68ff89933e35d7abace66c7930c1c1ab20667b538537ac8f01fc1ba5"

  url "https://get.geo.opera.com/pub/opera_gx/#{version}/mac/Opera_GX_#{version}_Setup.dmg"
  name "Opera GX"
  desc "Alternate version of the Opera web browser to complement gaming"
  homepage "https://www.opera.com/gx"

  livecheck do
    url "https://ftp.opera.com/pub/opera_gx/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true

  app "Opera GX.app"

  zap trash: "~/Library/Application Support/com.operasoftware.OperaGX"
end
