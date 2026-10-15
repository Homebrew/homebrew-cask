cask "letos" do
  version "4.0.4"
  sha256 "f62a9592b9f5ed07eec0c581162738708b91754e9d3b96c3d319513ec32b7b5b"

  url "https://github.com/pawelsalawa/letos/releases/download/#{version}/letos-#{version}-macos-universal.dmg"
  name "Letos"
  desc "Create, edit, browse SQLite databases"
  homepage "https://letos.org/"

  depends_on macos: :ventura

  app "Letos.app"

  uninstall quit: "org.letos.Letos"

  zap trash: [
    "~/Library/Preferences/letos.org",
    "~/Library/Preferences/org.letos.Letos.plist",
  ]
end
