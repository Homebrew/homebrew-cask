cask "koodo-reader" do
  arch arm: "-arm64", intel: "-x64"

  version "1.5.2"
  sha256 arm:   "95e2b0b6d6b0e0d1745b2820a8727e9af9143f868fd7582e9bd3e9a721e3bfbd",
         intel: "1df8ba0f631aac086ffba6cbc5d3f1b29995f596635bf0f6db03feacb2ba8a64"

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}#{arch}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
