cask "openaudible" do
  version "2.3.4"
  sha256 "763b2ef9366ee86e5567f8b28f951b1d362e5e5bbbcff6953f2ec44ec2fd5ffc"

  # github.com/openaudible/ was verified as official when first introduced to the cask
  url "https://github.com/openaudible/openaudible/releases/download/v#{version}/OpenAudible_#{version}_mac.dmg"
  appcast "https://github.com/openaudible/openaudible/releases.atom"
  name "OpenAudible"
  desc "Open-source audible manager"
  homepage "https://openaudible.org/"

  app "OpenAudible.app"

  zap trash: "/Library/OpenAudible"
end
