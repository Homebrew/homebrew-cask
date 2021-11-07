cask "fluent-reader" do
  version "1.0.2"
  sha256 "48ea4f7b9b9524fb01cd872664eae1be1cd9723e912ceb49f9b5104c1d1d2452"

  url "https://github.com/yang991178/fluent-reader/releases/download/v#{version}/Fluent.Reader.#{version}.dmg",
      verified: "github.com/yang991178/fluent-reader/"
  name "Fluent Reader"
  desc "RSS/Atom news aggregator"
  homepage "https://hyliu.me/fluent-reader/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "Fluent Reader.app"

  zap trash: [
    "~/Library//Application Support/fluent-reader",
    "~/Library/Preferences/me.hyliu.fluentreader.plist",
  ]
end
