cask "keystore-explorer" do
  arch arm: "arm64", intel: "x64"

  version "5.7.0"
  sha256 arm:   "59ffae1f70f3e4a2eb6d25b4169ee8b7b528d5638dec27b2b60a3287b61f0499",
         intel: "7e8a6ba4a824464494f9e2a1bc26de34dd64b71dd1a0147da6b123540bada25b"

  url "https://github.com/kaikramer/keystore-explorer/releases/download/v#{version}/kse-#{version.no_dots}-#{arch}.dmg",
      verified: "github.com/kaikramer/keystore-explorer/"
  name "KeyStore Explorer"
  desc "GUI replacement for the Java command-line utilities keytool and jarsigner"
  homepage "https://keystore-explorer.org/"

  livecheck do
    url "https://keystore-explorer.org/version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "KeyStore Explorer.app"

  zap trash: "~/Library/Saved Application State/org.kse.keystore-explorer.savedState"
end
