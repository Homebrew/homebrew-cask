cask "fluent-reader" do
  version "1.1.3"
  sha256 "2e17a4d044b0d9386c05aa01e0e7912cdb3cc3e75ecf1b19b7e5385e5041cdb6"

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
    "~/Library/Saved Application State/me.hyliu.fluentreader.savedState",
  ]
end
