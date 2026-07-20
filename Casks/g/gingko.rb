cask "gingko" do
  version "2.4.15"
  sha256 "bb1367b0a07a80872be253eda0519ec801e0b96b04d59c5bff3f825cf9e380c4"

  url "https://github.com/gingko/client/releases/download/v#{version}/Gingko-#{version}-mac.zip",
      verified: "github.com/gingko/client/"
  name "Gingko"
  desc "Word processor that shows structure and content"
  homepage "https://gingkowriter.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "Gingko.app"

  zap trash: "~/Library/Application Support/Gingko"

  caveats do
    requires_rosetta
  end
end
