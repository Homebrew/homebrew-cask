cask "impactor" do
  version "2.7.2"
  sha256 "fa1a2ba0fb7e46dbe1b0ea5e66f12d04cc570693afd14fe3b43979e5a3cfe3be"

  url "https://github.com/khcrysalis/Impactor/releases/download/v#{version}/Impactor-macos-universal.dmg"
  name "Impactor"
  desc "Sideloading application for iOS/tvOS"
  homepage "https://github.com/khcrysalis/Impactor/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Impactor.app"

  zap trash: "~/.config/PlumeImpactor"
end
