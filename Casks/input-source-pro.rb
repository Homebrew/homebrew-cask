cask "input-source-pro" do
  # NOTE: Beta is the only stable version available for this application.
  version "2.4.0-beta"
  sha256 "bea281f9d53e7460f960ae2458353ed8c18982ff51fe898e57d7ba19c0eec720"

  url "https://inputsource.pro/beta/Input%20Source%20Pro%20#{version}.dmg"
  name "Input Source Pro"
  desc "Tool for multi-language users"
  homepage "https://inputsource.pro/"

  livecheck do
    url "https://inputsource.pro/beta/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Input Source Pro.app"

  zap trash: [
    "~/Library/Application Support/Input Source Pro",
    "~/Library/Caches/com.runjuu.Input-Source-Pro",
    "~/Library/Preferences/com.runjuu.Input-Source-Pro.plist",
  ]
end
