cask "streamlabs-obs" do
  version "1.8.0"
  sha256 "83d47cc35ed4d4581f2e15971371c26a3f6b16d464e770038d9e7bddc3e3f920"

  url "https://slobs-cdn.streamlabs.com/Streamlabs+Desktop-#{version}.dmg"
  name "Streamlabs Desktop"
  desc "All-in-one live streaming software"
  homepage "https://streamlabs.com/"

  livecheck do
    url "https://streamlabs.com/streamlabs-desktop/download"
    strategy :header_match
    regex(/Streamlabs\+Desktop\+Setup\+(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Streamlabs Desktop.app"

  zap trash: [
    "~/Library/Application Support/slobs-client",
    "~/Library/Application Support/slobs-plugins",
  ]
end
