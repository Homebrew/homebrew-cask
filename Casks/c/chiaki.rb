cask "chiaki" do
  version "2.2.0"
  sha256 "bf0315f26f196ece67181f7f88adc28c7eb17c0fdda10315d7b7b3606ba370a7"

  url "https://git.sr.ht/~thestr4ng3r/chiaki/refs/download/v#{version}/Chiaki-v#{version}-macOS-x86_64.dmg"
  name "Chiaki"
  desc "PlayStation remote play client"
  homepage "https://git.sr.ht/~thestr4ng3r/chiaki"

  livecheck do
    url :homepage
  end

  app "Chiaki.app"

  zap trash: [
    "~/Library/Application Support/Chiaki",
    "~/Library/Preferences/com.chiaki.Chiaki.plist",
  ]

  caveats do
    requires_rosetta
  end
end
