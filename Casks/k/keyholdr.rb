cask "keyholdr" do
  version "1.5.0"
  sha256 "6d740811551a0d0878a9ba2854700f143fd7d0b347b972d360f30eccf7ff7fe0"

  url "https://github.com/OlixIgnacious/keyholdr/releases/download/v#{version}/Keyholdr-macOS-v#{version}.zip",
      verified: "github.com/OlixIgnacious/keyholdr/"
  name "Keyholdr"
  desc "Menu bar vault for API keys with Touch ID unlock"
  homepage "https://olixignacious.github.io/keyholdr-site/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "Keyholdr.app"
  binary "#{appdir}/Keyholdr.app/Contents/MacOS/keyholdr-cli", target: "keyholdr"

  zap trash: "~/Library/Application Support/com.olixstudios.Keyholdr"

  caveats <<~EOS
    The `keyholdr` CLI is linked onto your PATH.

    The first read of each key shows a one-time macOS Keychain consent —
    choose "Always Allow".

    Secrets live in the macOS Keychain and survive uninstalls by design;
    `brew uninstall --zap keyholdr` removes the metadata file but not the
    Keychain entries.
  EOS
end
