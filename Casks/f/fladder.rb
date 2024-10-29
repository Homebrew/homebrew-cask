cask "fladder" do
  version "0.3.1"
  sha256 "a75ff34c39973a2417db06ccd179846a8dea6adfc85b65692eff3a276d904827"

  url "https://github.com/DonutWare/Fladder/releases/download/v#{version}/Fladder-macOS-#{version}.dmg"
  name "fladder"
  desc "Fladder - A Simple Jellyfin Frontend built on top of Flutter. "
  homepage "https://github.com/DonutWare/Fladder"

  app "Fladder.app"

  depends_on macos: ">= :mojave"

  livecheck do
    url :url
    strategy :github_latest
  end

  zap trash: [
    "~/Library/Containers/Fladder"
  ]
end
