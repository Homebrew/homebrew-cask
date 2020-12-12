cask "licecap" do
  version "1.30"
  sha256 "de2af536ced4a81ef6c89c237741037bd12a4532a231d1fc2f3bc456d175c382"

  url "https://www.cockos.com/licecap/licecap#{version.no_dots}.dmg"
  appcast "https://www.cockos.com/licecap/"
  name "LICEcap"
  desc "Animated screen capture application"
  homepage "https://www.cockos.com/licecap/"

  app "LICEcap.app"

  zap trash: [
    "~/Library/Application Support/LICEcap",
    "~/Library/Preferences/com.cockos.LICEcap.plist",
  ]
end
