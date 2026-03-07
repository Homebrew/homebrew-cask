cask "mucommander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.0-1"
  sha256 arm:   "d3946a00a800c311580cd2088d2861c75de5db0519e9939dfa669d3538f14ddd",
         intel: "0a93cd3d20f083c442e248bd433c22fe73735546957304dc63187dfea7063c1b"

  url "https://github.com/mucommander/mucommander/releases/download/#{version}/muCommander-#{version}-#{arch}.dmg",
      verified: "github.com/mucommander/mucommander/"
  name "muCommander"
  desc "File manager with a dual-pane interface"
  homepage "https://www.mucommander.com/"

  app "muCommander.app"

  zap trash: "~/Library/Preferences/muCommander"
end
