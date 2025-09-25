cask "tev" do
  arch intel: "-intel"

  version "2.5.0"
  sha256 arm:   "d86d03fd8fbed6fceaa6de9c45ab3ffab3fcefdad18ce0a14e466acc65d5699c",
         intel: "7c4d68dbde3cd620dd79d78da1e5b76fded130764313045a78a1f94a1f658771"

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
