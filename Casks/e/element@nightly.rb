cask "element@nightly" do
  version "2025082901"
  sha256 "9b91f45ee33d8f72bbc6e9b3fe4c30511020f1fe037d226a853c87f2df77ea12"

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
  depends_on macos: ">= :big_sur"

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
