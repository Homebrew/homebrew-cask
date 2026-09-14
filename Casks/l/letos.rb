cask "letos" do
  version "4.0.3"
  sha256 "86a6ccfaa110fcdb570c245f15986a7e79c462457128c5450ebb669a252f20fb"

  url "https://github.com/pawelsalawa/letos/releases/download/#{version}/letos-#{version}-macos-universal.dmg"
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
