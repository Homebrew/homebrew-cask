cask "aerial" do
  version "2.0.10"
  sha256 "59d8820c61e027236673c24aeeab1e57ecb1a65d3e437da1df342f3b3fa0e3ca"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast "https://github.com/JohnCoates/Aerial/releases.atom"
  name "Aerial Screensaver"
  homepage "https://github.com/JohnCoates/Aerial"

  screen_saver "Aerial.saver"

  zap trash: "~/Library/Caches/Aerial"
end
