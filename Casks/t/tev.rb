cask "tev" do
  arch intel: "-intel"

  version "2.6.0"
  sha256 arm:   "ed2118157c802a758e424c2e0d71f8bfc54ec2fd6206e3fb07cc2f353f5e74ba",
         intel: "11b1346d9c1cd6ef2aeb6c1240a48fba71486835a19eeb742faca70dd8f08ad5"

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
