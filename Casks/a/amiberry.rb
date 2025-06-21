cask "amiberry" do
  arch arm: "apple-silicon", intel: "x86_64"

  version "7.0.9"
  sha256 arm:   "3c897c8b68fa8681eecc66968bfb28547f13ce2264c04315277716a5e6a2d994",
         intel: "166ffaaf324e14567aed0a13f850bae81c73f11d74722a906b61b185c145ee5f"

  url "https://github.com/BlitterStudio/amiberry/releases/download/v#{version}/Amiberry-v#{version}-macOS-#{arch}.zip",
      verified: "github.com/BlitterStudio/amiberry/"
  name "Amiberry"
  desc "Amiga emulator"
  homepage "https://amiberry.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Amiberry.app"

  zap trash: "~/Library/Application Support/Amiberry"
end
