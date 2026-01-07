cask "kitlangton-hex" do
  version "0.6.5"
  sha256 "49408c980ddbbbcc523389833bddfdecd73f8b85986c7dcdc7b585a983455c99"

  url "https://github.com/kitlangton/Hex/releases/download/v#{version}/Hex-#{version}.dmg",
      verified: "github.com/kitlangton/Hex/"
  name "Hex"
  desc "Voice-to-text transcription and paste tool"
  homepage "https://hex.kitlangton.com/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Hex.app"
end
