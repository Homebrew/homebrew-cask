cask "bloom" do
  version "1.5.32"
  sha256 "f06713064a57b3735039a074c2adcf523d30242c691635027a054e07cea79450"

  url "https://bloomapp.club/downloads/bloom/Bloom-v#{version}.dmg",
      referer: "https://bloomapp.club"
  name "Bloom"
  desc "File manager"
  homepage "https://bloomapp.club/"

  livecheck do
    url "https://bloomapp.club/downloads/bloom/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Bloom.app"

  zap trash: [
    "~/Library/Containers/com.asiafu.Bloom",
    "~/Library/Preferences/com.asiafu.Bloom.plist",
  ]
end
