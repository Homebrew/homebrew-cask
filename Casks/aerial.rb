cask "aerial" do
  version "2.0.0"
  sha256 "e4555ba4db3eea33d82f9f926e076a4dd91db04af61d7e2eb22d5213c85a9e7d"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast "https://github.com/JohnCoates/Aerial/releases.atom"
  name "Aerial Screensaver"
  homepage "https://github.com/JohnCoates/Aerial"

  screen_saver "Aerial.saver"

  zap trash: "~/Library/Caches/Aerial"
end
