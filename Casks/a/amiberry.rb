cask "amiberry" do
  arch arm: "apple-silicon", intel: "x86_64"

  version "7.0.8"
  sha256 arm:   "21c6b2bb20c12c6e427718a79f43339a6cdcd87823193a5091a02794b64c03c3",
         intel: "085cd17638a9f8d6f347e5c6b10d316a6c9e907b999908cf8ac2f1bb2fa99876"

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
