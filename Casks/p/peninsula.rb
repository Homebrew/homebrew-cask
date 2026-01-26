cask "peninsula" do
  version "0.1.0"
  sha256 "e95654889d4e390e3bcad594cd1c0e2b1a4314958aedb1d1bcec608ff9700890"

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
