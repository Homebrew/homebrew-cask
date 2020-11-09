cask "aerial" do
  version "2.1.1"
  sha256 "b3846e02d66720c14e391dbe2d366cf7be3b05e8ee9f7952359f6e3691efc0ae"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast "https://github.com/JohnCoates/Aerial/releases.atom"
  name "Aerial Screensaver"
  homepage "https://github.com/JohnCoates/Aerial"

  screen_saver "Aerial.saver"

  zap trash: "~/Library/Caches/Aerial"
end
