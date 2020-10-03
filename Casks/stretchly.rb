cask "stretchly" do
  version "1.2.0"
  sha256 "54b209b55286f61b5527b830ede1258553cc9eac339ad9148461de726a96c0f6"

  # github.com/hovancik/stretchly/ was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}.dmg"
  appcast "https://github.com/hovancik/stretchly/releases.atom"
  name "Stretchly"
  desc "Break time reminder app"
  homepage "https://hovancik.net/stretchly/"

  app "Stretchly.app"
end
