cask "aerial" do
  version "2.3.3"
  sha256 "857c2fb27733ce8ba8fb6cadb4642e1994b14f800f335fbe058ff4ae5cb294cd"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  name "Aerial Screensaver"
  homepage "https://github.com/JohnCoates/Aerial"

  screen_saver "Aerial.saver"

  zap trash: "~/Library/Caches/Aerial"
end
