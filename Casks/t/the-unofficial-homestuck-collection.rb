cask "the-unofficial-homestuck-collection" do
  version "2.6.5"
  sha256 "81e31473802dd11ad5b6ca8a9144b6add731c915a3623c42d32286e7e0fecf55"

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
