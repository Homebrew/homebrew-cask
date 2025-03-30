cask "amiberry" do
  arch arm: "apple-silicon", intel: "x86_64"

  version "7.0.7"
  sha256 arm:   "99a7ee14debac79e6d7b28ca5ad3a1b1c8b92484851d34425880ca68fb798b59",
         intel: "827cb9fdbb2ff3fca26ba07a9127b47c0fa5bd8ad2ac7892dfdfa891347b3e9d"

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
