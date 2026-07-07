cask "prevail" do
  version "0.2.167"
  sha256 "0e1090ae3a45e3950ea1b4a7aeab3f848604b03558ca6f11481dde0a26e23890"

  url "https://github.com/fru-dev3/prevail-desktop/releases/download/v#{version}/Prevail_#{version}_aarch64.dmg",
      verified: "github.com/fru-dev3/prevail-desktop/"
  name "Prevail"
  desc "Local-first AI life OS over a plain-markdown vault"
  homepage "https://prevail.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Prevail.app"

  zap trash: [
    "~/Library/Application Support/sh.prevail.desktop",
    "~/Library/Caches/sh.prevail.desktop",
    "~/Library/Preferences/sh.prevail.desktop.plist",
    "~/Library/Saved Application State/sh.prevail.desktop.savedState",
    "~/Library/WebKit/sh.prevail.desktop",
  ]
end
