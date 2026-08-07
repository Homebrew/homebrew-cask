cask "letos" do
  version "4.0.2"
  sha256 "4f70b16de6bdd796f8e8cee512ae1b0b902200efa56903d8d68b29c9b3cf78fe"

  url "https://github.com/pawelsalawa/letos/releases/download/#{version}/letos-#{version}-macos-universal.dmg",
      verified: "github.com/pawelsalawa/letos/releases/download/"
  name "Letos"
  desc "Create, edit, browse SQLite databases"
  homepage "https://letos.org/"

  depends_on macos: :ventura

  app "Letos.app"

  zap trash: [
    "~/Library/Preferences/letos.org",
    "~/Library/Preferences/org.letos.Letos.plist",
  ]
end
