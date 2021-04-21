cask "spek" do
  version "0.8.3"
  sha256 "648ffe37a4605d76b8d63ca677503ba63338b84c5df73961d9a5335ff144cc54"

  url "https://github.com/alexkay/spek/releases/download/v#{version}/spek-#{version}.dmg",
      verified: "github.com/alexkay/spek/"
  name "Spek"
  desc "Acoustic spectrum analyser"
  homepage "http://spek.cc/"

  depends_on macos: "<= :sierra"

  app "Spek.app"
end
