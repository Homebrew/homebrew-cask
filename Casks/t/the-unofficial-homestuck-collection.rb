cask "the-unofficial-homestuck-collection" do
  version "2.6.1"
  sha256 "92d71d8d128a17d12d71c9b6bb958ae5f52d058b3dc8981e2241933448da4fa7"

  url "https://github.com/Bambosh/unofficial-homestuck-collection/releases/download/v#{version}/The-Unofficial-Homestuck-Collection-#{version}.dmg",
      verified: "github.com/Bambosh/unofficial-homestuck-collection/"
  name "The Unofficial Homestuck Collection"
  desc "Offline viewer for the webcomic Homestuck"
  homepage "https://bambosh.github.io/unofficial-homestuck-collection/"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :requires_manual_review

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
