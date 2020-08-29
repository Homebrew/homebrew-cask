cask "aerial" do
  version "2.0.5"
  sha256 "15e54d80f3f3dea6b35d895c09271c771ebf5a248aa635f2db75c058d0e3b9b3"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast "https://github.com/JohnCoates/Aerial/releases.atom"
  name "Aerial Screensaver"
  homepage "https://github.com/JohnCoates/Aerial"

  screen_saver "Aerial.saver"

  zap trash: "~/Library/Caches/Aerial"
end
