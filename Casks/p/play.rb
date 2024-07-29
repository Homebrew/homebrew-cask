cask "play" do
  version "2.0.20"
  sha256 "101f1392bc03ece2ee6e86683472f33e3ebe0b91a050b41ed121d09253df930c"

  url "https://github.com/pmsaue0/play/releases/download/v#{version}/play_#{version}.dmg.zip",
      verified: "github.com/pmsaue0/play/"
  name "Play"
  homepage "https://pmsaue0.github.io/play/"

  disable! date: "2024-07-28", because: :discontinued

  app "Play.app"

  zap trash: [
    "~/Library/Application Support/Play",
    "~/Library/Caches/Play",
  ]

  caveats do
    requires_rosetta
  end
end
