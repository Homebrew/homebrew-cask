cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.62"
  sha256 arm:   "4ada4efdaf1b1f8384480e661548548db19f230153f4c069f9fd348ec34b4120",
         intel: "20936a633c79f1e22172254ecb0ed90042d57bacb736b7057d2bcb69fd4cc6a9"

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
