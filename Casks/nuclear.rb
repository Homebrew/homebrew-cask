cask "nuclear" do
  version "0.6.27"
  sha256 "1c8fb7f444b85d5ab153c0ac303558e94478e688a503440b67ad303036007124"

  url "https://github.com/nukeop/nuclear/releases/download/v#{version}/nuclear-v#{version}.dmg",
      verified: "github.com/nukeop/nuclear/"
  name "Nuclear"
  desc "Streaming music player"
  homepage "https://nuclear.js.org/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  app "nuclear.app"

  zap trash: [
    "~/Library/Application Support/nuclear",
    "~/Library/Logs/nuclear",
    "~/Library/Preferences/nuclear.plist",
    "~/Library/Saved Application State/nuclear.savedState",
  ]
end
