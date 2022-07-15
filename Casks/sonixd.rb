cask "sonixd" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.15.3"

  if Hardware::CPU.intel?
    sha256 "384889e0abccdd75771624f874d812a1ed49f50e2f51af03e0bcb286940059dc"
  else
    sha256 "f2382d64fa216c7fb7734043c77be5b45e1dd5f214da3cca0a5d3c34c2e7acda"
  end

  url "https://github.com/jeffvli/sonixd/releases/download/v#{version}/Sonixd-#{version}-mac-#{arch}.dmg"
  name "Sonixd"
  desc "Desktop client for Subsonic-API and Jellyfin music servers"
  homepage "https://github.com/jeffvli/sonixd"

  app "Sonixd.app"

  zap trash: [
    "~/Library/Application Support/Sonixd",
    "~/Library/Caches/org.erb.sonixd",
    "~/Library/Caches/org.erb.sonixd.ShipIt",
    "~/Library/Preferences/org.erb.sonixd.plist",
    "~/Library/Saved Application State/org.erb.sonixd.savedState",
  ]
end
