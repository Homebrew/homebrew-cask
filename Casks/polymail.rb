cask "polymail" do
  arch arm: "-arm64"

  version "2.2.8"
  sha256 arm:   "82cc62cc3435b75e1e2161a4b120cbd2fbeacf71e9673725f928a17ad9440082",
         intel: "2e6a9f4fb78a16fad49496621279005ff7732123467051b260c8db353467f8b8"

  url "https://sparkle-updater.polymail.io/macos#{arch}/builds/Polymail-v#{version}.zip"
  name "Polymail"
  desc "Email productivity application"
  homepage "https://polymail.io/"

  livecheck do
    url "https://sparkle-updater.polymail.io/macos#{arch}/Polymail-Latest.zip"
    strategy :header_match
  end

  auto_updates true

  app "Polymail.app"
end
