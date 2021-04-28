cask "oolite" do
  version "1.90"
  sha256 "0f3ee04e6874b560482c091445a73d1411a444538928e232681d15a829fab605"

  url "https://github.com/OoliteProject/oolite/releases/download/#{version}/Oolite-#{version}.zip",
      verified: "github.com/OoliteProject/oolite/"
  name "oolite"
  homepage "http://www.oolite.org/"

  app "Oolite.app"
end
