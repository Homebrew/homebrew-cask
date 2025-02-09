cask "amiberry" do
  arch arm: "apple-silicon", intel: "x86_64"

  version "7.0.4"
  sha256 arm:   "5e2b36f2845d7bae9c1fa3cc638d9fc4bc7dcfff285530ad3dddd6ca8898340d",
         intel: "c930943474244d66979e8a36733809eaf0cf990003d9d72271f358de3d872891"

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
