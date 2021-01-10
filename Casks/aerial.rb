cask "aerial" do
  version "2.2.5"
  sha256 "fbe3caa5dfc2159bf45dee70beba558caf4a2aa5b936c1438d3c5107fe96a676"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast "https://github.com/JohnCoates/Aerial/releases.atom"
  name "Aerial Screensaver"
  homepage "https://github.com/JohnCoates/Aerial"

  screen_saver "Aerial.saver"

  zap trash: "~/Library/Caches/Aerial"
end
