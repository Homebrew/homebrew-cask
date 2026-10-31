cask "openscreen" do
  arch arm: "arm64", intel: "x64"

  version "2.1.2"
  sha256 arm:   "431e90d87bbd64f13f68929a4d063274087a9b3554876af05ca0e3f94e70151b",
         intel: "7b55e8878cb359ac0f0f3cf44af171fc29e24cf2ac6e65d9c8a732367731b782"

  url "https://github.com/getopenscreen/openscreen/releases/download/v#{version}/Openscreen-Mac-#{arch}-#{version}.zip"
  name "OpenScreen"
  desc "Screen recorder and demo video editor"
  homepage "https://getopenscreen.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :ventura

  app "Openscreen.app"
  binary "#{appdir}/Openscreen.app/Contents/MacOS/Openscreen", target: "openscreen"

  zap trash: [
    "~/Library/Application Support/openscreen",
    "~/Library/Caches/com.etiennelescot.openscreen",
    "~/Library/Preferences/com.etiennelescot.openscreen.plist",
    "~/Library/Saved Application State/com.etiennelescot.openscreen.savedState",
  ]
end
