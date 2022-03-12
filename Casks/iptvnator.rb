cask "iptvnator" do
  version "0.9.0"
  sha256 "e777792326fa1990966b71b92fc46ca708c02b1eff8f4a90f5b5a03a920d7273"

  url "https://github.com/4gray/iptvnator/releases/download/v#{version}/iptvnator-#{version}.dmg"
  name "IPTVnator"
  desc "Open Source m3u, m3u8 player"
  homepage "https://github.com/4gray/iptvnator"

  livecheck do
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "iptvnator.app"

  zap trash: [
    "~/Library/Application Support/iptvnator",
    "~/Library/Preferences/com.electron.iptvnator.plist",
    "~/Library/Saved Application State/com.electron.iptvnator.savedState",
  ]
end
