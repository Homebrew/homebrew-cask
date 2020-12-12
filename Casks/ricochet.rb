cask "ricochet" do
  version "1.1.4.1"
  sha256 "e5fbcbebe51fa52d9443fd2a07714d0e6e087c314a9c3eecf73ed4da8ca9e8aa"

  # github.com/ricochet-im/ was verified as official when first introduced to the cask
  url "https://github.com/ricochet-im/ricochet/releases/download/v#{version.major_minor_patch}/ricochet-#{version}-macos.dmg"
  appcast "https://github.com/ricochet-im/ricochet/releases.atom"
  name "Ricochet"
  desc "Anonymous peer-to-peer instant messaging"
  homepage "https://ricochet.im/"

  app "Ricochet.app"
end
