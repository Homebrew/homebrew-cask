cask "amiberry" do
  arch arm: "apple-silicon", intel: "x86_64"

  version "7.0.5"
  sha256 arm:   "1897120fad0ccfc9dc261e368594fdc1d28dec4596e7903e6bbe490e6cc2d6d2",
         intel: "b2d3d03d6032be69172d5b7012881e7988fbe56811fb402f56cf1f18f727f9e1"

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
