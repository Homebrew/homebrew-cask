cask "haveno" do
  version "1.0.0"
  sha256 "9167045961c451662f3f8acf2edc77439ff256ebde89c914e468e234ab6f5af5"

  url "https://github.com/KewbitXMR/haveno-app/releases/download/v#{version}/Haveno-Multi-Platform-MacOS-Homebrew-v#{version}.zip",
      verified: "github.com/KewbitXMR/haveno-app/"
  name "Haveno"
  desc "Client for the P2P decentralised exchange built on Tor and Monero"
  homepage "https://haveno.com/"

  depends_on macos: ">= :catalina"

  app "Haveno.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-d", "-r", "com.apple.quarantine", "#{appdir}/Haveno.app"]
  end
  
end
