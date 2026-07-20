cask "balenaetcher" do
  arch arm: "arm64", intel: "x64"

  version "2.1.6"
  sha256 arm:   "ecf71fb5e74803ea8d7d16c54378a6a8d964e9808594b867c088222a8cfe3d2b",
         intel: "a09909789aee9d6a35863bcdec069103dd4883eb45b6e5e218e66abc043a9e05"

  url "https://github.com/balena-io/etcher/releases/download/v#{version}/balenaEtcher-#{version}-#{arch}.dmg",
      verified: "github.com/balena-io/etcher/"
  name "Etcher"
  desc "Tool to flash OS images to SD cards & USB drives"
  homepage "https://balena.io/etcher"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

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
