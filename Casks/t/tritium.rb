cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.66"
  sha256 arm:   "fd050ff01a01e805bd1a4466443ece2ce0bce87e4d7cee339a767a2d7883e34b",
         intel: "b7d0636cad99d8117b87595d7bb31971cfd4e849868d0403b55c911c0b566ee3"

  url "https://tritium.legal/static/releases/tritium-macos-#{arch}.#{version}.zip"
  name "Tritium"
  desc "Integrated drafting environment for legal professionals"
  homepage "https://tritium.legal/"

  livecheck do
    url "https://tritium.legal/version"
    strategy :page_match, &:strip
  end

  auto_updates true
  depends_on :macos

  app "tritium.app"

  zap trash: "~/Library/Application Support/com.Tritium-Legal.tritium"
end
