cask "element" do
  version "1.12.2"
  sha256 "f0dd98418c33f7414c138099c730292e31b353c0d4b25ff2ecd51a5d56759eca"

  url "https://packages.element.io/desktop/update/macos/Element-#{version}-universal-mac.zip"
  name "Element"
  desc "Matrix collaboration client"
  homepage "https://element.io/get-started"

  # The `releases.json` file is served with a `Content-Encoding: aws-chunked`
  # header, which will cause curl to error if the `--compressed` option is used.
  # This checks the version on the directory listing page until we can account
  # for this situation in livecheck.
  livecheck do
    url "https://packages.element.io/desktop/update/macos/index.html"
    regex(/href=.*?Element[._-]v?(\d+(?:\.\d+)+)[._-]universal[._-]mac\.zip/i)
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Element.app"

  zap trash: [
    "~/Library/Application Support/Element",
    "~/Library/Application Support/Riot",
    "~/Library/Caches/im.riot.app",
    "~/Library/Caches/im.riot.app.ShipIt",
    "~/Library/HTTPStorages/im.riot.app",
    "~/Library/Logs/Riot",
    "~/Library/Preferences/ByHost/im.riot.app.ShipIt.*.plist",
    "~/Library/Preferences/im.riot.app.helper.plist",
    "~/Library/Preferences/im.riot.app.plist",
    "~/Library/Saved Application State/im.riot.app.savedState",
  ]
end
