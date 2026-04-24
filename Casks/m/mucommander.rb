cask "mucommander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.1-1"
  sha256 arm:   "1bf4ef5957aec0bbac1e170862929f8e6340c47170048dc2a8150c8703149b64",
         intel: "07bd173347695bd4c073a95254dd9e68c602f924baf9a8b7aedfaacbd539defa"

  url "https://github.com/mucommander/mucommander/releases/download/#{version}/muCommander-#{version}-#{arch}.dmg",
      verified: "github.com/mucommander/mucommander/"
  name "muCommander"
  desc "File manager with a dual-pane interface"
  homepage "https://www.mucommander.com/"

  depends_on :macos

  app "muCommander.app"

  zap trash: "~/Library/Preferences/muCommander"
end
