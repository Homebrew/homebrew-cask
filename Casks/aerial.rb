cask "aerial" do
  version "2.0.1"
  sha256 "3cfff5fecdd03e9f3b01a98b67f49cca4f8359043ff84c11604aa0d126f6cf24"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast "https://github.com/JohnCoates/Aerial/releases.atom"
  name "Aerial Screensaver"
  homepage "https://github.com/JohnCoates/Aerial"

  screen_saver "Aerial.saver"

  zap trash: "~/Library/Caches/Aerial"
end
