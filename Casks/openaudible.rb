cask "openaudible" do
  version "2.3"
  sha256 "fde17fed3b36006653f39cbb3e7f513de5d06f6e61d67ea08e55ce4a0612c099"

  # github.com/openaudible/ was verified as official when first introduced to the cask
  url "https://github.com/openaudible/openaudible/releases/download/v#{version}/OpenAudible_#{version}_mac.dmg"
  appcast "https://github.com/openaudible/openaudible/releases.atom"
  name "OpenAudible"
  homepage "https://openaudible.org/"

  app "OpenAudible.app"

  zap trash: "/Library/OpenAudible"
end
