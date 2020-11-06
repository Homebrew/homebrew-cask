cask "cemu" do
  version "1.3"
  sha256 "db28a0497ea944a6118f869b50268d5f8c3730c37367033eeebc7cdec08fd60c"

  # github.com/CE-Programming/CEmu/ was verified as official when first introduced to the cask
  url "https://github.com/CE-Programming/CEmu/releases/download/v#{version}/macOS_CEmu.dmg"
  appcast "https://github.com/CE-Programming/CEmu/releases.atom"
  name "CEmu"
  homepage "https://ce-programming.github.io/CEmu/"

  app "CEmu.app"
end
