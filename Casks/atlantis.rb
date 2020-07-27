cask "atlantis" do
  version "0.9.9.7"
  sha256 "64a5066991c50c32426e539d10b4bc89db5af435bd86fedf7938d4a19907fe76"

  url "https://www.riverdark.net/atlantis/downloads/Atlantis-#{version}.zip"
  appcast "https://www.riverdark.net/atlantis/downloads/"
  name "Atlantis"
  homepage "https://www.riverdark.net/atlantis/"

  app "Atlantis.app"
end
