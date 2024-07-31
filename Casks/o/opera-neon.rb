cask "opera-neon" do
  version "1.0.2531.0,2531.0"
  sha256 :no_check

  url "https://get.geo.opera.com/.private/OperaNeon.dmg"
  name "Opera Neon"
  desc "Web browser"
  homepage "https://www.opera.com/computer/neon"

  deprecate! date: "2024-07-29", because: :unmaintained

  app "Opera Neon.app"

  zap trash: [
    "~/Library/Application Support/Opera Neon",
    "~/Library/Caches/Opera Neon",
  ]

  caveats do
    requires_rosetta
  end
end
