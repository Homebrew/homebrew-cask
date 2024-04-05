cask "feed-the-beast" do
  arch arm: "arm64", intel: "x64"

  version "1.25.7"
  sha256 arm:   "4e10bb1b9f3b5c95ba17e53f018912dc9c44f5c4ed0699b326edb3725a6c1099",
         intel: "2029ac34a7589327db81c1c17634b8b0a89c2e20f04e1b45221becd75cb72f21"

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
