cask "prudent" do
  version "28"
  sha256 "bc50c48060e47c3e50709603891c55ae95b3a4ed83f0dd9dfcfd2c1640a7cea3"

  url "https://github.com/PrudentMe/main/releases/download/#{version}/Prudent.zip",
      verified: "github.com/PrudentMe/main/"
  name "Prudent"
  desc "Integrated environment for your personal and family ledger"
  homepage "https://prudent.me/"

  app "Prudent.app"
end
