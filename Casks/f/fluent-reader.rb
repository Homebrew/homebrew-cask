cask "fluent-reader" do
  version "1.2.1"
  sha256 "f06d5eb24e705335715a286ee377ede5ca58360dac15edb410d433dc26fad98c"

  url "https://github.com/yang991178/fluent-reader/releases/download/v#{version}/Fluent.Reader.#{version}.dmg",
      verified: "github.com/yang991178/fluent-reader/"
  name "Fluent Reader"
  desc "RSS/Atom news aggregator"
  homepage "https://hyliu.me/fluent-reader/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :monterey"

  app "Fluent Reader.app"

  zap trash: [
    "~/Library/Application Support/fluent-reader",
    "~/Library/Preferences/me.hyliu.fluentreader.plist",
    "~/Library/Saved Application State/me.hyliu.fluentreader.savedState",
  ]
end
