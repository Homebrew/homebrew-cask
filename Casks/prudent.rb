cask "prudent" do
  version "27"
  sha256 "3583a98db51dc39da16ec4681bdd2ecccd6b96c6b8851718de093f9e61ad338a"

  url "https://github.com/PrudentMe/main/releases/download/#{version}/Prudent.zip",
      verified: "github.com/PrudentMe/main/"
  name "Prudent"
  desc "Integrated environment for your personal and family ledger"
  homepage "https://prudent.me/"

  app "Prudent.app"
end
