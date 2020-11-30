cask "aerial" do
  version "2.2.1"
  sha256 "fdc088e130b53d8d1b001c4077326a1556ecb90ddd9fb02c7bf7abaa8ad39b0b"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast "https://github.com/JohnCoates/Aerial/releases.atom"
  name "Aerial Screensaver"
  homepage "https://github.com/JohnCoates/Aerial"

  screen_saver "Aerial.saver"

  zap trash: "~/Library/Caches/Aerial"
end
