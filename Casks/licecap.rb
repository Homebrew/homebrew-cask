cask "licecap" do
  version "1.31"
  sha256 "704cd237b261d355b1ed86f19f286a5a5ad7581ef563cb1c84a5df1266b48f2d"

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
