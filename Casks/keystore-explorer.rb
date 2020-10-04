cask "keystore-explorer" do
  version "5.4.4"
  sha256 "07f4283a7e120293690b11c8963019b632e0bf18ed785caf706fdc66a4f868b8"

  # github.com/kaikramer/keystore-explorer/ was verified as official when first introduced to the cask
  url "https://github.com/kaikramer/keystore-explorer/releases/download/v#{version}/kse-#{version.no_dots}.dmg"
  appcast "https://github.com/kaikramer/keystore-explorer/releases.atom"
  name "KeyStore Explorer"
  homepage "https://keystore-explorer.org/"

  app "KeyStore Explorer.app"
end
