cask "the-unofficial-homestuck-collection" do
  version "2.5.2"
  sha256 "c2177f82979049c17894b5ba948a4f5f7b5e75eadd9f565ee28d90b98563a55b"

  url "https://github.com/Bambosh/unofficial-homestuck-collection/releases/download/v#{version}/The-Unofficial-Homestuck-Collection-#{version}.dmg",
      verified: "github.com/Bambosh/unofficial-homestuck-collection/"
  name "The Unofficial Homestuck Collection"
  desc "Offline viewer for the webcomic Homestuck"
  homepage "https://bambosh.github.io/unofficial-homestuck-collection/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "The Unofficial Homestuck Collection.app"

  zap trash: [
    "~/Library/Application Support/unofficial-homestuck-collection",
    "~/Library/Preferences/com.bambosh.unofficialhomestuckcollection.plist",
    "~/Library/Saved Application State/com.bambosh.unofficialhomestuckcollection.savedState",
  ]

  caveats do
    requires_rosetta
    <<~EOS
      You will need to download the corresponding Asset Pack by visiting:
        https://bambosh.github.io/unofficial-homestuck-collection/
    EOS
  end
end
