cask "aerial" do
  version "2.1.5"
  sha256 "ada3ba9b10356d82fe90627bd84d8139983d425333af839a8f73ab830a2ebbb1"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast "https://github.com/JohnCoates/Aerial/releases.atom"
  name "Aerial Screensaver"
  homepage "https://github.com/JohnCoates/Aerial"

  screen_saver "Aerial.saver"

  zap trash: "~/Library/Caches/Aerial"
end
