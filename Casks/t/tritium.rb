cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.44"
  sha256 arm:   "dd40a1c1c69eec2ef0d800f18b94a18df61e93460d173dc3385ad7534d3d3e0b",
         intel: "24fc6c7ebc7d25e67ffadcb0fc4e157ba17b042484b6d0d8ac748c505b6cef6e"

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
