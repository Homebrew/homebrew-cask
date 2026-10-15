cask "fluent-reader" do
  version "1.3.0"
  sha256 "2ddaedcff4e96cfc6ec1189f5bef11160a219a5c6af595238fa4dd46d74eb672"

  url "https://github.com/yang991178/fluent-reader/releases/download/v#{version}/Fluent.Reader.#{version}.dmg"
  name "Fluent Reader"
  desc "RSS/Atom news aggregator"
  homepage "https://hyliu.me/fluent-reader/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :ventura

  app "Fluent Reader.app"

  zap trash: [
    "~/Library/Application Support/fluent-reader",
    "~/Library/Preferences/me.hyliu.fluentreader.plist",
    "~/Library/Saved Application State/me.hyliu.fluentreader.savedState",
  ]
end
