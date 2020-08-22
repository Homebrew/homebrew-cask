cask "aerial" do
  version "2.0.2"
  sha256 "0a96bb02ba3460f2d9e68f59a42fccb67a788c756a09dfb717749c726e042db9"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast "https://github.com/JohnCoates/Aerial/releases.atom"
  name "Aerial Screensaver"
  homepage "https://github.com/JohnCoates/Aerial"

  screen_saver "Aerial.saver"

  zap trash: "~/Library/Caches/Aerial"
end
