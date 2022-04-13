cask "komodo-edit" do
  version "12.0.1,18441"
  sha256 "68811e8c5d28a3a2ec9a390a36b8b07c81c0ff1f129c02f1349e106490fae6e3"

  url "https://downloads.activestate.com/Komodo/releases/#{version.csv.first}/Komodo-Edit-#{version.csv.first}-#{version.csv.second}-macosx-x86_64.dmg"
  name "Komodo Edit"
  desc "Text editor"
  homepage "https://www.activestate.com/komodo-edit/"

  livecheck do
    url "https://www.activestate.com/komodo-ide/downloads/edit"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/Komodo-Edit-(\d+(?:\.\d+)*)-(\d+)-macosx-x86_64\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Komodo Edit #{version.major}.app"
end
