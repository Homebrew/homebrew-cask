cask "input-source-pro" do
  version "2.0.8-beta,309"
  sha256 "12ec77807ecd61bcd3ffd8d9c3b6aef929506868abdbc0966f6767228d7ca7fb"

  url "https://inputsource.pro/beta/Input%20Source%20Pro%20#{version.csv.first}.dmg"
  name "Input Source Pro"
  desc "Tool for multi-language users"
  homepage "https://inputsource.pro/"

  livecheck do
    url "https://inputsource.pro/beta/appcast.xml"
    strategy :sparkle
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
