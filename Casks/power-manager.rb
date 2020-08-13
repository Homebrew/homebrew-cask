cask "power-manager" do
  version "5.4.9"
  sha256 "bf0a4643ad032ae1fea4e0dfa24de4f97da9717261f0a23cd94c43a4c10cd4e5"

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast "https://version.dssw.co.uk/powermanager/"
  name "Power Manager"
  homepage "https://dssw.co.uk/powermanager/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Power Manager.app"
end
