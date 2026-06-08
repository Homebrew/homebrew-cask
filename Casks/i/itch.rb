cask "itch" do
  arch arm: "arm64", intel: "amd64"

  version "26.13.0"
  sha256 arm:   "1c2bd9900fd325c8163e0b801e211aeab40d549fb09d5654ef865d5d00f0f22c",
         intel: "5fbefdd0ea72ffbd66b2ba857371b35996220962b2ef236ba3b872bd1e848647"

  url "https://github.com/itchio/itch/releases/download/v#{version}/itch-v#{version}-darwin-#{arch}.tar.gz",
      verified: "github.com/itchio/itch/"
  name "itch"
  desc "Game client for itch.io"
  homepage "https://itch.io/app"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "itch.app"

  uninstall quit: "io.itch.mac"

  zap trash: [
    "~/Library/Application Support/itch",
    "~/Library/Preferences/io.itch.mac.helper.plist",
    "~/Library/Preferences/io.itch.mac.plist",
  ]
end
