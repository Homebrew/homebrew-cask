cask "feed-the-beast" do
  arch arm: "arm64", intel: "x64"

  version "1.25.6"
  sha256 arm:   "8cdd030d94efbe67ec0380813caf42f75e579c117810c14edfad08e79d64a03d",
         intel: "397c25a095c330e63fc18a81afa4d91126563aedceb39e0f2623529a1b98ad49"

  url "https://piston.feed-the-beast.com/app/ftb-app-#{version}-#{arch}.dmg"
  name "Feed the Beast"
  desc "Minecraft mod downloader and manager"
  homepage "https://www.feed-the-beast.com/"

  livecheck do
    url "https://meta.feed-the-beast.com/v1/app/versions"
    regex(/ftb[._-]app[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  app "FTB App.app"

  zap trash: "~/Library/Application Support/ftblauncher"

  caveats do
    depends_on_java
  end
end
