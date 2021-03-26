cask "keysmith" do
  version "1.16.1"
  sha256 "23643b4e9323d4844edb80d6748f2c4b0b250896bd7457dc3225bd328d8c3185"

  url "https://keysmith.app/versions/Keysmith-#{version}.dmg"
  appcast "https://www.keysmith.app/versions/appcast.xml"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  depends_on macos: ">= :catalina"

  app "Keysmith.app"
end
