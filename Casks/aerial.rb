cask "aerial" do
  version "2.3.0"
  sha256 "e60e8178214883fc85328b8cd614ec775d4eb84e162c3d84e41f5225ba01625c"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  name "Aerial Screensaver"
  homepage "https://github.com/JohnCoates/Aerial"

  screen_saver "Aerial.saver"

  zap trash: "~/Library/Caches/Aerial"
end
