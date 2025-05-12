cask "input-leap" do
  version "3.0.2"
  sha256 "e7a27f187e4e97f724e7b0ae9f9490be27d3e81a6cac0e3cf85654b37f28b1a3"

  url "https://github.com/input-leap/input-leap/releases/download/v#{version}/InputLeap_#{version}_macos_AppleSilicon.dmg"
  name "Input Leap"
  desc "Open-source KVM software"
  homepage "https://github.com/input-leap/input-leap"

  depends_on macos: ">= :catalina"

  app "InputLeap.app"

  zap trash: [
    "~/Library/Application Support/InputLeap",
    "~/Library/Saved Application State/InputLeap.savedState",
  ]
end
