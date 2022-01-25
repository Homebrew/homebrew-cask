cask "atlantis" do
  version "0.9.9.7"
  sha256 "64a5066991c50c32426e539d10b4bc89db5af435bd86fedf7938d4a19907fe76"

  url "https://www.riverdark.net/atlantis/downloads/Atlantis-#{version}.zip"
  name "Atlantis"
  desc "MUD (Multi User Dungeon) client"
  homepage "https://www.riverdark.net/atlantis/"

  livecheck do
    url "https://www.riverdark.net/atlantis/downloads/"
    regex(/href=.*?Atlantis-(\d+(?:\.\d+)+)\.zip/i)
  end

  app "Atlantis.app"
end
