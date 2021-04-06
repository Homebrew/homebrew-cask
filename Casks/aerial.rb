cask "aerial" do
  version "2.2.6"
  sha256 "5dee5d5d16b7941059db48dfe3d8de9c25004bc07819f053986a59a49ad16c8d"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  name "Aerial Screensaver"
  homepage "https://github.com/JohnCoates/Aerial"

  screen_saver "Aerial.saver"

  zap trash: "~/Library/Caches/Aerial"
end
