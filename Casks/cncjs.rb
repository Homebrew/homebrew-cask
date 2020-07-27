cask "cncjs" do
  version "1.9.22"
  sha256 "be56b0777e449631e774c57eb8f28b50e52519bce50bdd092d77233462fe3269"

  # github.com/cncjs/cncjs/ was verified as official when first introduced to the cask
  url "https://github.com/cncjs/cncjs/releases/download/v#{version}/cncjs-app-#{version}-mac-x64.dmg"
  appcast "https://github.com/cncjs/cncjs/releases.atom"
  name "CNSjs"
  homepage "https://cnc.js.org/"

  app "CNCjs.app"
end
