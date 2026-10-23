cask "input-source-pro" do
  version "2.14.0"
  sha256 "cf2c76e3f18d5c2659a31079a8dc614504dca27879fa9df19cd4bb2ccfe319d8"

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
    "~/Library/HTTPStorages/com.runjuu.Input-Source-Pro",
    "~/Library/Preferences/com.runjuu.Input-Source-Pro.plist",
    "~/Library/WebKit/com.runjuu.Input-Source-Pro",
  ]
end
