cask "fluent-reader" do
  version "1.1.4"
  sha256 "cdcac2ad7199b214be1c4fe0f0f0c936c86ef87c2e173fb87e9395652399cad6"

  url "https://github.com/yang991178/fluent-reader/releases/download/v#{version}/Fluent.Reader.#{version}.dmg",
      verified: "github.com/yang991178/fluent-reader/"
  name "Fluent Reader"
  desc "RSS/Atom news aggregator"
  homepage "https://hyliu.me/fluent-reader/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :catalina"

  app "Fluent Reader.app"

  zap trash: [
    "~/Library/Application Support/fluent-reader",
    "~/Library/Preferences/me.hyliu.fluentreader.plist",
    "~/Library/Saved Application State/me.hyliu.fluentreader.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
