cask "mucommander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.2-1"
  sha256 arm:   "212a290fbf48040a6f4fff04b7a050ff81527e3ecb81bcde7155d52dca2103c0",
         intel: "ad9ca8c42076f6b68be81efa95d66a7d4727c1f12616dba2d4be9108651ab4da"

  url "https://github.com/mucommander/mucommander/releases/download/#{version}/muCommander-#{version}-#{arch}.dmg",
      verified: "github.com/mucommander/mucommander/"
  name "muCommander"
  desc "File manager with a dual-pane interface"
  homepage "https://www.mucommander.com/"

  depends_on :macos

  app "muCommander.app"

  zap trash: "~/Library/Preferences/muCommander"
end
