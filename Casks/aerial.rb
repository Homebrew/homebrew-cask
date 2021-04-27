cask "aerial" do
  version "2.3.1"
  sha256 "f4c8bf6059e024b6e970ad021a6ce2168219aa01d80d4345cc67f0d30199182b"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  name "Aerial Screensaver"
  homepage "https://github.com/JohnCoates/Aerial"

  screen_saver "Aerial.saver"

  zap trash: "~/Library/Caches/Aerial"
end
