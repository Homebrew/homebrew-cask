cask "fluent-reader" do
  version "1.1.0"
  sha256 "a9fbf42b38ae9c0ff5985c9ed76115e6bffa5098cd76f1f57a43dcfe548c07b2"

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
    "~/Library/Application Support/fluent-reader",
    "~/Library/Preferences/me.hyliu.fluentreader.plist",
  ]
end
