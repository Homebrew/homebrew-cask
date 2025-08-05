cask "peninsula" do
  version "0.0.11.post0"
  sha256 "1e3c7fcca222e5d25b3d2e10945afaa5054fbb994328937d2c86c533b3781b85"

  url "https://github.com/Celve/Peninsula/releases/download/v#{version}/Peninsula.zip"
  name "Peninsula"
  desc "Notch app for window management"
  homepage "https://github.com/Celve/Peninsula"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:[._-]post[._-]?\d+)?)$/i)
  end

  depends_on macos: ">= :sonoma"

  app "Peninsula.app"

  uninstall quit: "Celve.Peninsula"

  # No zap stanza required
end
