cask "otty" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.0"
  sha256 arm:   "8c3e0ecc737286878dbf5ef491a9ea9658ca31d2ed40f4f48014b0aa2fa78f79",
         intel: "46e4adc1b04500842eede4b1d738adf6cce27bd2c404f3fbef3ee489304f6902"

  url "https://downloads.otty.sh/macos/Otty-#{version}-#{arch}.zip"
  name "Otty"
  desc "Terminal-centric workspace for development and operations"
  homepage "https://otty.sh/"

  livecheck do
    url "https://docs.otty.sh/changelog"
    regex(/>\s*v?(\d+(?:\.\d+)+)\s*</i)
  end

  depends_on macos: :sonoma

  app "Otty.app"
  binary "#{appdir}/Otty.app/Contents/MacOS/otty-cli", target: "otty"

  zap trash: [
    "~/.config/otty",
    "~/Library/Caches/io.appmakes.otty",
    "~/Library/HTTPStorages/io.appmakes.otty",
    "~/Library/Preferences/io.appmakes.otty.plist",
    "~/Library/Saved Application State/io.appmakes.otty.savedState",
  ]
end
