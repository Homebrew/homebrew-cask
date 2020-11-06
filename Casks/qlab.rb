cask "qlab" do
  version "4.6.6"
  sha256 "64a6f095a9cbe3f77e0c487bc54d76bcc6c5c60356a0f855a6334abb2483943c"

  url "https://qlab.app/downloads/archive/QLab-#{version}.zip"
  appcast "https://qlab.app/appcast/v#{version.major}/"
  name "QLab"
  homepage "https://qlab.app/"

  auto_updates true

  app "QLab.app"
end
