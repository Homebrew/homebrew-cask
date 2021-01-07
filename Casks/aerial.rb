cask "aerial" do
  version "2.2.4"
  sha256 "6858529edd298faa806e8c7acc224fdad232a0fc6c205d993c1e5caa2518a768"

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  name "Aerial Screensaver"
  homepage "https://github.com/JohnCoates/Aerial"

  livecheck do
    url :url
    strategy :git
  end

  screen_saver "Aerial.saver"

  zap trash: "~/Library/Caches/Aerial"
end
