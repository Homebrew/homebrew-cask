cask "komodo-edit" do
  version "12.0.1,18441"
  sha256 "68811e8c5d28a3a2ec9a390a36b8b07c81c0ff1f129c02f1349e106490fae6e3"

  url "https://downloads.activestate.com/Komodo/releases/#{version.csv.first}/Komodo-Edit-#{version.csv.first}-#{version.csv.second}-macosx-x86_64.dmg"
  name "Komodo Edit"
  desc "Text editor"
  homepage "https://www.activestate.com/komodo-edit/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Komodo Edit #{version.major}.app"
end
