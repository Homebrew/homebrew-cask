cask "letos" do
  version "4.0.1"
  sha256 "820eb81471ac6641ae4e7d2f6b390b1f1e0d4c6ca6196fa7bb982076971fdebd"

  url "https://github.com/pawelsalawa/letos/releases/download/#{version}/letos-#{version}-macos-universal.dmg",
      verified: "github.com/pawelsalawa/letos/releases/download/"
  name "Letos"
  desc "Create, edit, browse SQLite databases"
  homepage "https://letos.org/"

  depends_on macos: :big_sur

  app "Letos.app"

  zap trash: [
    "~/Library/Preferences/letos.org",
    "~/Library/Preferences/org.letos.Letos.plist",
  ]
end
