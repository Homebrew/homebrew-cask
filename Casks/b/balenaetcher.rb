cask "balenaetcher" do
  arch arm: "arm64", intel: "x64"

  version "2.1.8"
  sha256 arm:   "77dec2292a8eadb8505f65c8da904f65ffdbfff74b8b1ae8439eeaf22b3d5143",
         intel: "4f20070d465a89345be2ad292fa829639ceb599473e013c14fe7fd2d3e45ea7b"

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
