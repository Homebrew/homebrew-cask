cask "input-source-pro" do
  version "2.8.0"
  sha256 "abdc4aa1691335be9a8d8e4769aa31a019928f0f1e0bddee83ac142c97fe1c8e"

  url "https://inputsource.pro/stable/Input%20Source%20Pro%20#{version}.dmg"
  name "Input Source Pro"
  desc "Tool for multi-language users"
  homepage "https://inputsource.pro/"

  livecheck do
    url "https://inputsource.pro/stable/appcast.xml"
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
