cask "amiberry" do
  arch arm: "apple-silicon", intel: "x86_64"

  version "7.1.0"
  sha256 arm:   "3b3d5ce513e922fc4860d2aaffc44edb14be4578874d4455209f3f5b92ff226e",
         intel: "d1e389ea6e021007135b28ce6c6ebcac0ab43fc0add6455318c4d4abd7bb0953"

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
