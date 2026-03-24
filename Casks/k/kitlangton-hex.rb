cask "kitlangton-hex" do
  version "0.7.2"
  sha256 "7167f7bb8b383383e10016b57b483b00a84d646e5e1671a4652449de1184ea83"

  url "https://github.com/kitlangton/Hex/releases/download/v#{version}/Hex-#{version}.dmg",
      verified: "github.com/kitlangton/Hex/"
  name "Hex"
  desc "Voice-to-text transcription and paste tool"
  homepage "https://hex.kitlangton.com/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Hex.app"

  zap trash: [
    "~/Library/Application Scripts/com.kitlangton.Hex",
    "~/Library/Containers/com.kitlangton.Hex",
  ]
end
