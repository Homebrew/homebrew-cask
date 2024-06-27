cask "couchpotato" do
  version "3.0.1"
  sha256 "b1db35f93727fc30e50f4d2023b7d844db5a725d16fd6072e3d10b805c2d7e28"

  url "https://github.com/CouchPotato/CouchPotatoServer/releases/download/build%2F#{version}/CouchPotato-#{version}.macosx-10_6-intel.zip",
      verified: "github.com/CouchPotato/CouchPotatoServer/"
  name "CouchPotato"
  desc "Automatic Movie Downloading via NZBs & Torrents"
  homepage "https://couchpota.to/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "CouchPotato.app"

  zap trash: "~/Library/Application Support/CouchPotato"

  caveats do
    requires_rosetta
  end
end
