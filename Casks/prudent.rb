cask "prudent" do
  version "26"
  sha256 "3dc4a1e65e2209cd3bc9a8c08c886ab33c78d40b85bed16068eac51b6c4cc9c7"

  url "https://github.com/PrudentMe/main/releases/download/#{version}/Prudent.zip",
      verified: "github.com/PrudentMe/main/"
  name "Prudent"
  desc "Integrated environment for your personal and family ledger"
  homepage "https://prudent.me/"

  app "Prudent.app"
end
