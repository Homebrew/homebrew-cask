cask "balenaetcher" do
  arch arm: "arm64", intel: "x64"

  version "2.1.4"
  sha256 arm:   "6196813482f3fe8c329002a46610c7623a7ab8d0e48cdeca21d9dc05eb668dc9",
         intel: "52d9d20d6e1929f1032d3625361cf46d37d42e928df077746a238abeec412254"

  url "https://github.com/balena-io/etcher/releases/download/v#{version}/balenaEtcher-#{version}-#{arch}.dmg",
      verified: "github.com/balena-io/etcher/"
  name "Etcher"
  desc "Tool to flash OS images to SD cards & USB drives"
  homepage "https://balena.io/etcher"

  livecheck do
    url :url
    strategy :github_latest
  end

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
