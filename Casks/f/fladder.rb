cask "fladder" do
  version "0.3.1"
  sha256 "a75ff34c39973a2417db06ccd179846a8dea6adfc85b65692eff3a276d904827"

  url "https://github.com/DonutWare/Fladder/releases/download/v#{version}/Fladder-macOS-#{version}.dmg"
  name "fladder"
  desc "Simple Jellyfin Frontend built on top of Flutter"
  homepage "https://github.com/DonutWare/Fladder"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  app "Fladder.app"

  zap trash: "~/Library/Containers/Fladder"
end
