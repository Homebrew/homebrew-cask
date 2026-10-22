cask "balenaetcher" do
  arch arm: "arm64", intel: "x64"

  version "2.1.9"
  sha256 arm:   "44baa43cc425e6e236a7e6fc405fe9562e4955ddedc6e6f27e22d6e5905759fe",
         intel: "1e896b335987afda8a2b97d92a4113e18a3cf3f52a46b9ce86ec5f4d8aecc884"

  url "https://github.com/balena-io/etcher/releases/download/v#{version}/balenaEtcher-#{version}-#{arch}.dmg"
  name "Etcher"
  desc "Tool to flash OS images to SD cards & USB drives"
  homepage "https://balena.io/etcher"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "balenaEtcher.app"

  uninstall quit: "io.balena.etcher.*"

  zap trash: [
    "~/Library/Application Support/balenaEtcher",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.balena.etcher.sfl*",
    "~/Library/Preferences/io.balena.etcher.helper.plist",
    "~/Library/Preferences/io.balena.etcher.plist",
    "~/Library/Saved Application State/io.balena.etcher.savedState",
  ]
end
