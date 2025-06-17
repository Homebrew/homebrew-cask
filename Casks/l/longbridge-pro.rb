cask "longbridge-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.28.2"
  sha256 arm:   "cd59cf26527396d79768e8eec03bf06f6ff4d8a5f49ba5caa4d992a2add784d8",
         intel: "77088a5cea38590ec49349e881d370df6c695c7b0f0cabbf579c7a3e20c2d374"

  url "https://download.lbkrs.com/longbridge-desktop/prod/longbridge-pro-#{version}-mac-#{arch}.dmg",
      verified: "download.lbkrs.com/longbridge-desktop/prod/"
  name "Longbridge Pro"
  desc "Stock trading platform"
  homepage "https://longbridge.com/"

  livecheck do
    url "https://download.wbrks.com/longbridge-desktop/prod/latest-mac.yml"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :yaml do |yaml|
      yaml["version"]
    end
  end

  depends_on macos: ">= :big_sur"

  app "Longbridge Pro.app"

  # No zap stanza required
end
