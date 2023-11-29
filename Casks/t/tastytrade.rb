cask "tastytrade" do
  arch arm: "-aarch64"

  version "2.5.4"
  sha256 arm:   "51f21ecd02cd7b0acf13d80f712e87a2a163d79a8b1721cebc78559deb1615fe",
         intel: "da585b646afba35104957cbfb433c4b27cc9f1ee6fd69f3a045397c3a27d5c7f"

  url "https://download.tastytrade.com/desktop-#{version.major}.x.x/#{version}/tastytrade-#{version}#{arch}.dmg"
  name "tastytrade"
  desc "Desktop trading platform"
  homepage "https://tastytrade.com/technology/"

  livecheck do
    skip "No version information available"
  end

  auto_updates true

  app "tastytrade.app"

  zap trash: [
    "~/Library/Application Support/tastytrade",
    "~/Library/Saved Application State/com.tastytrade.desktop.savedState",
  ]
end
