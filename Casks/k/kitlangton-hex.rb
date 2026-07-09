cask "kitlangton-hex" do
  version "0.8.3"
  sha256 "2a187732035081ab009362e9d42e6b5e885fa8f0f5438cf1777b10358c08e52c"

  url "https://github.com/kitlangton/Hex/releases/download/v#{version}/Hex-#{version}.dmg",
      verified: "github.com/kitlangton/Hex/"
  name "Hex"
  desc "Voice-to-text transcription and paste tool"
  homepage "https://hex.kitlangton.com/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Hex.app"

  zap trash: [
    "~/Library/Application Scripts/com.kitlangton.Hex",
    "~/Library/Containers/com.kitlangton.Hex",
  ]
end
