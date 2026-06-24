cask "letos" do
  version "4.0.0"
  sha256 "d5dde9ddf726a13e6eb177425b2722bf8119f72cab049ecb7b0c0dfa3c4e92ed"

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
