cask "aerial" do
  version "2.3.2"
  sha256 "34fdbd5ec7ca087e3bea72c421947f38e43b0f62992caa532157c29b0f3e9ff1"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  name "Aerial Screensaver"
  homepage "https://github.com/JohnCoates/Aerial"

  screen_saver "Aerial.saver"

  zap trash: "~/Library/Caches/Aerial"
end
