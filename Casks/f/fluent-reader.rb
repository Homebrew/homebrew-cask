cask "fluent-reader" do
  version "1.3.2"
  sha256 "a5088738449c84c2e713ed36e00f6c032d3d15dba0fe4220fe0f560cd46af712"

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
