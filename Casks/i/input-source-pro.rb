cask "input-source-pro" do
  version "2.13.0"
  sha256 "f664b4c3a98454a455710e964233fe86f7f17475f5789826adc2e94092549169"

  url "https://inputsource.pro/stable/Input%20Source%20Pro%20#{version}.dmg"
  name "Input Source Pro"
  desc "Tool for multi-language users"
  homepage "https://inputsource.pro/"

  livecheck do
    url "https://inputsource.pro/stable/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "Input Source Pro.app"

  zap trash: [
    "~/Library/Application Support/Input Source Pro",
    "~/Library/Caches/com.runjuu.Input-Source-Pro",
    "~/Library/Preferences/com.runjuu.Input-Source-Pro.plist",
  ]
end
