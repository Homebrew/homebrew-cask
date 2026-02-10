cask "keystore-explorer" do
  arch arm: "arm64", intel: "x64"

  version "5.6.1"
  sha256 arm:   "693e325e59173a14a1aedf4eb581ed24b6ddb0e8bb4037893312606eb23fab7b",
         intel: "052dd5ada5a453082b08040b646a3c35d206b84afd3b8911084a796dc2555a54"

  url "https://github.com/kaikramer/keystore-explorer/releases/download/v#{version}/kse-#{version.no_dots}-#{arch}.dmg",
      verified: "github.com/kaikramer/keystore-explorer/"
  name "KeyStore Explorer"
  desc "GUI replacement for the Java command-line utilities keytool and jarsigner"
  homepage "https://keystore-explorer.org/"

  livecheck do
    url "https://keystore-explorer.org/version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  app "KeyStore Explorer.app"

  zap trash: "~/Library/Saved Application State/org.kse.keystore-explorer.savedState"
end
