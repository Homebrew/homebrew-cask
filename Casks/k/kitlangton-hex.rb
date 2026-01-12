cask "kitlangton-hex" do
  version "0.6.8"
  sha256 "e9e1e806a25512f59de887358a03720e0bfb97596dfc1300e1ea471d7ac02ad4"

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
