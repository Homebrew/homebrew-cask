cask "between" do
  version "1.0.8"
  sha256 "2657704186c88668975f21a22eeadd3ee31ab3527c59214ca90a89b7342be896"

  url "http://assets-pc.between.us/downloads/between-#{version}.dmg"
  name "Between"
  desc "Relationship app for couples"
  homepage "https://between.us/"

  livecheck do
    url "http://assets-pc.between.us/downloads/metadata-mac.xml"
    strategy :sparkle
  end

  app "Between.app"
end
