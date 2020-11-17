cask "aerial" do
  version "2.1.3"
  sha256 "5fa5e8b31688ae37c3a500ed6849407904b81ef0f0577ae6177e404a386ad9b5"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast "https://github.com/JohnCoates/Aerial/releases.atom"
  name "Aerial Screensaver"
  homepage "https://github.com/JohnCoates/Aerial"

  screen_saver "Aerial.saver"

  zap trash: "~/Library/Caches/Aerial"
end
