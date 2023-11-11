cask "arctime-pro" do
  version "4.3"
  sha256 "9d22e35be3462bb5784387f6b1e3224a1d3160ac60781083c832f922a4ee5122"

  url "https://dl.arctime.pro/ARCTIME_PRO_#{version}_MAC.zip",
      verified: "dl.arctime.pro/"
  name "arctime-pro"
  desc "Cross platform subtitle tool"
  homepage "https://arctime.cn/"

  livecheck do
    url "https://t.arctime.cn/ap2m"
    strategy :header_match
  end

  auto_updates true

  app "ARCTIME_PRO_#{version}_MAC/ArcTime Pro.app"
end
