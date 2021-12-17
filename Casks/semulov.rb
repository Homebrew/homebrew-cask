cask "semulov" do
  version "2.6"
  sha256 "fc25b015251562df79c89143b2fb123fc793d780e3f1eb9990d6d5723c870dc6"

  url "https://github.com/kainjow/Semulov/releases/download/v#{version}/Semulov.zip"
  name "Semulov"
  desc "Access mounted and unmounted volumes from the menubar"
  homepage "https://github.com/kainjow/Semulov"

  app "Semulov.app"
end
