cask "element@nightly" do
  version "2025111001"
  sha256 "d832d94896a8d453f22cbc0dc9df75929c32ab6210ab03e192f083f122806c13"

  url "https://packages.element.io/nightly/update/macos/Element%20Nightly-#{version}-universal-mac.zip"
  name "Element Nightly"
  desc "Matrix collaboration client"
  homepage "https://element.io/get-started"

  # The `releases.json` file is served with a `Content-Encoding: aws-chunked`
  # header, which will cause curl to error if the `--compressed` option is used.
  # This checks the version on the directory listing page until we can account
  # for this situation in livecheck.
  livecheck do
    url "https://packages.element.io/nightly/update/macos/index.html"
    regex(/href=.*?Element\s+Nightly[._-]v?(\d+(?:\.\d+)*)[._-]universal[._-]mac\.zip/i)
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Element Nightly.app"

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
