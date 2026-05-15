cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.40"
  sha256 arm:   "2c53d7cb04f5655f644975f82ea9e0d95d236f6dda3efddea8ca417e51125017",
         intel: "d239fadfc629931fe40c082f079c531d7c164456bdbcb4f5aeeeda67bc86ef63"

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
