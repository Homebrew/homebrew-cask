cask "aerial" do
  version "2.0.4"
  sha256 "9212164ce0cb63d1aae0d39552d18de1acc745e6b1c35878611e8d08ab2fa336"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast "https://github.com/JohnCoates/Aerial/releases.atom"
  name "Aerial Screensaver"
  homepage "https://github.com/JohnCoates/Aerial"

  screen_saver "Aerial.saver"

  zap trash: "~/Library/Caches/Aerial"
end
