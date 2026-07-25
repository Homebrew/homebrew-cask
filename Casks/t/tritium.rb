cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.48"
  sha256 arm:   "bf105fffd0cd2b2e60182184b6e0e36b239903ade26637fd13fcda0226808921",
         intel: "37cf932ad1007ddc7b3a9800dae4aa429f908bae2115b58a6b1a27a32a2c92a3"

  url "https://tritium.legal/static/releases/tritium-macos-#{arch}.#{version}.zip"
  name "Tritium"
  desc "Integrated drafting environment for legal professionals"
  homepage "https://tritium.legal/"

  livecheck do
    url "https://tritium.legal/version"
    strategy :page_match, &:strip
  end

  auto_updates true
  depends_on macos: :big_sur

  app "tritium.app"

  zap trash: "~/Library/Application Support/com.Tritium-Legal.tritium"
end
