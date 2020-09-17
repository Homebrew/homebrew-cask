cask "aerial" do
  version "2.0.9"
  sha256 "284939b08e7e74fb78c150fec89331dead746d69aec767a49423e4640d292395"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast "https://github.com/JohnCoates/Aerial/releases.atom"
  name "Aerial Screensaver"
  homepage "https://github.com/JohnCoates/Aerial"

  screen_saver "Aerial.saver"

  zap trash: "~/Library/Caches/Aerial"
end
