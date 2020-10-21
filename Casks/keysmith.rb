cask "keysmith" do
  version "1.3.0"
  sha256 "6a1d5320e89677c3266d471675e20635803417739d4edc351e121839b8b634e3"

  url "https://keysmith.app/versions/Keysmith-#{version}.dmg"
  appcast "https://www.keysmith.app/versions/appcast.xml"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  depends_on macos: ">= :catalina"

  app "Keysmith.app"
end
