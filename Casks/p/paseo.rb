cask "paseo" do
  arch arm: "arm64", intel: "x64"

  version "0.1.37"
  sha256 arm:   "e2b3837f4a5a5535d2ed528458afa29b115e637d961dcd31be140f7aa2446973",
         intel: "02a856880ed8d8590a2b16c7d172b7c1ddfe2a0514f70970f380e5a21c7f20b4"

  url "https://github.com/getpaseo/paseo/releases/download/v#{version}/Paseo-#{version}-#{arch}.dmg",
      verified: "github.com/getpaseo/paseo/"
  name "Paseo"
  desc "Self-hosted daemon for AI coding agents"
  homepage "https://paseo.sh/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :monterey"

  app "Paseo.app"
  binary "#{appdir}/Paseo.app/Contents/Resources/bin/paseo"

  zap trash: [
    "~/Library/Application Support/dev.paseo.desktop",
    "~/Library/Caches/dev.paseo.desktop",
    "~/Library/Logs/dev.paseo.desktop",
    "~/Library/Preferences/dev.paseo.desktop.plist",
    "~/Library/Saved Application State/dev.paseo.desktop.savedState",
    "~/Library/WebKit/dev.paseo.desktop",
  ]
end
