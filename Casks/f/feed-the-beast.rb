cask "feed-the-beast" do
  arch arm: "arm64", intel: "x64"

  version "1.25.6"
  sha256 arm:   "7cd9db09f32a90c48029f698e60100e18d19bde8f16b7b26649f17e9c2828f98",
         intel: "7cd9db09f32a90c48029f698e60100e18d19bde8f16b7b26649f17e9c2828f99"

  url "https://feed-the-beast.com/app/ftb-app-#{version}-#{arch}.dmg"
  name "Feed the Beast"
  desc "Minecraft mod downloader and manager"
  homepage "https://www.feed-the-beast.com/"

  livecheck do
    url "https://meta.feed-the-beast.com/v1/app/versions"
    regex(/ftb[._-]app[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  app "FTBApp.app"

  zap trash: "~/Library/Application Support/ftblauncher"

  caveats do
    depends_on_java
  end
end
