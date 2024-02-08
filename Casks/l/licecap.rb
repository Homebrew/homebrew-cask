cask "licecap" do
  version "1.32"
  sha256 "115c40eb710085969a72a24d5d84ae2c05260192cc68a22e73e99e148c6638da"

  url "https://www.cockos.com/licecap/licecap#{version.no_dots}.dmg"
  name "LICEcap"
  desc "Animated screen capture application"
  homepage "https://www.cockos.com/licecap/"

  livecheck do
    url :homepage
    regex(/v?(\d+(?:\.\d+)*)\s*for\s*macOS/i)
  end

  app "LICEcap.app"

  zap trash: [
    "~/Library/Application Support/LICEcap",
    "~/Library/Preferences/com.cockos.LICEcap.plist",
  ]
end
