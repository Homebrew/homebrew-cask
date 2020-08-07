cask "openaudible" do
  version "2.3.1"
  sha256 "cd7788e7424a413db081b66eb4d7f28d2711a21c48ad5cec6a96bc89087b875a"

  # github.com/openaudible/ was verified as official when first introduced to the cask
  url "https://github.com/openaudible/openaudible/releases/download/v#{version}/OpenAudible_#{version}_mac.dmg"
  appcast "https://github.com/openaudible/openaudible/releases.atom"
  name "OpenAudible"
  homepage "https://openaudible.org/"

  app "OpenAudible.app"

  zap trash: "/Library/OpenAudible"
end
