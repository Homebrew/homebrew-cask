cask "butler" do
  version "4.3.3"
  sha256 "8541af85e4b6c827cdeb91bec1ce31acbaf4727fb9c97dca976d260d7c211b37"

  url "https://manytricks.com/download/butler"
  appcast "https://manytricks.com/butler/appcast"
  name "Butler"
  homepage "https://manytricks.com/butler/"

  auto_updates true

  app "Butler.app"
end
