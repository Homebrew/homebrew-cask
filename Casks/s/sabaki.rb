cask "sabaki" do
  arch arm: "arm64", intel: "x64"

  version "0.52.2"
  sha256 arm:   "e2cf00aa5ca0c2a675db847978466ba87ac2af9db33209ba7774be545b0f904c",
         intel: "5e1a38772cc6926b1880341df128ae2f6172b29128cbb206782c84df6d7ec743"

  url "https://github.com/SabakiHQ/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-#{arch}.7z",
      verified: "github.com/SabakiHQ/Sabaki/"
  name "Sabaki"
  desc "Go board and SGF editor"
  homepage "https://sabaki.yichuanshen.de/"

  app "Sabaki.app"

  zap trash: [
    "~/Library/Application Support/Sabaki",
    "~/Library/Preferences/de.yichuanshen.sabaki.plist",
    "~/Library/Saved Application State/de.yichuanshen.sabaki.savedState",
  ]
end
