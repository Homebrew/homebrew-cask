cask "input-source-pro" do
  version "2.1.5-beta,322"
  sha256 "a44ba06306a734934023440eff67c12db18def250abb2b9ac5466949436d2e20"

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
