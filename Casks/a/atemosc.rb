cask "atemosc" do
  arch arm: "-arm64"

  version "5.0.5"
  sha256 arm:   "0975c85205814b7c085883f117013b806d47649da59d57673138ecabd20d6dc1",
         intel: "b30ebc769b48a066685012ea1603d48aa21ae4926e81fb66b7fb832711a9ffba"

  url "https://atemosc.com/download/atemOSC-#{version}#{arch}.dmg"
  name "atemOSC"
  desc "Control BMD ATEM video switchers with OSC"
  homepage "https://www.atemosc.com/"

  livecheck do
    url "https://www.atemosc.com/download/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true # Requires a license key to enable
  depends_on macos: ">= :high_sierra"

  app "atemOSC.app"

  zap trash: [
    "~/Library/Application Support/atemOSC",
    "~/Library/Logs/atemOSC",
    "~/Library/Preferences/dev.steffey.atemOSC.plist",
    "~/Library/Saved Application State/dev.steffey.atemOSC.savedState",
  ]
end
