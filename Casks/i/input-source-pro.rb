cask "input-source-pro" do
  version "2.6.1"
  sha256 "99b1f5e357a30ecdf581a4181a056cb34b2cbca4c84f2265ce51917dcdbb278f"

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
