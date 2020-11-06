cask "buttercup" do
  version "1.20.5"
  sha256 "37cb9c643fd8564d3e0114f15a640f36caf7b5e82d8ca7b5cc8f65657c133c81"

  # github.com/buttercup/buttercup-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}.dmg"
  appcast "https://github.com/buttercup/buttercup-desktop/releases.atom"
  name "Buttercup"
  desc "Javascript Secrets Vault - Multi-Platform Desktop Application"
  homepage "https://buttercup.pw/"

  app "Buttercup.app"
end
