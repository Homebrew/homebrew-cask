cask "morkro-papyrus" do
  version "1.0.3"
  sha256 "6130e0d93486db9e969686270e8edddc9be16b52b342fdb4d31eb4546d161118"

  url "https://github.com/morkro/papyrus/releases/download/#{version}/Papyrus-osx-#{version}.zip"
  name "Papyrus"
  desc "Unofficial Dropbox Paper desktop app"
  homepage "https://github.com/morkro/papyrus"

  app "Papyrus.app"

  caveats do
    requires_rosetta
  end
end
