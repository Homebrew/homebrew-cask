cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.12.0"
  sha256 arm:   "a4f29e1cb160efce16abe76e2b1b67152759ee47cf5f2e6c979a687732c47dff",
         intel: "e336d8c608b63d9b12868023860275fa8bfea921a23d3f9bdbc1f55607a85dd8"

  url "https://github.com/cryptomator/cryptomator/releases/download/#{version}/Cryptomator-#{version}#{arch}.dmg",
      verified: "github.com/cryptomator/cryptomator/"
  name "Cryptomator"
  desc "Multi-platform client-side cloud file encryption tool"
  homepage "https://cryptomator.org/"

  depends_on macos: ">= :high_sierra"

  app "Cryptomator.app"

  zap trash: [
    "~/Library/Application Support/Cryptomator",
    "~/Library/Logs/Cryptomator",
    "~/Library/Preferences/org.cryptomator.plist",
  ]
end
