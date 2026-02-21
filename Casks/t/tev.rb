cask "tev" do
  arch intel: "-intel"

  version "2.9.0"
  sha256 arm:   "155cb72ef6b87d858bd645b34a975cd756923cbd07f7af0aafe99cc8cd6c3b84",
         intel: "6f016460af75eb9c45976d6dc61120aa51116e2659569fae0c31801d10f1fdfa"

  url "https://github.com/Tom94/tev/releases/download/v#{version}/tev#{arch}.dmg"
  name "tev"
  desc "High dynamic range (HDR) image viewer with accurate color management"
  homepage "https://github.com/Tom94/tev"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "tev.app"
  binary "#{appdir}/tev.app/Contents/MacOS/tev"

  zap trash: "~/Library/Preferences/org.tom94.tev.plist"
end
