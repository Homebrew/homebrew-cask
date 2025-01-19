cask "amiberry" do
  arch arm: "apple-silicon", intel: "x86_64"

  version "7.0.1"
  sha256 arm:   "47fbbd4504e432814f5dd6b822955ff664623b93124acd78e349666fbb945c2a",
         intel: "8e2fdd5696557729bf4416b462508e1346df900759ab7772b30cf758b6dd546c"

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
