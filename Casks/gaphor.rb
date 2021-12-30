cask "gaphor" do
  version "2.7.1"
  sha256 "a329c3afcd7771a21e998c6ae066e4741dd28c42a8e5865cbe4c560cee78bdc7"

  url "https://github.com/gaphor/gaphor/releases/download/#{version}/Gaphor-#{version}.dmg",
      verified: "github.com/gaphor/gaphor/"
  name "gaphor"
  desc "UML/SysML modeling tool"
  homepage "https://gaphor.org/"

  livecheck do
    url "https://gaphor.org/latest.txt"
    strategy :page_match
    regex(/(\d+(?:\.\d+)*)/)
  end

  app "Gaphor.app"

  uninstall quit: "Gaphor-#{version}"

  zap trash: [
    "~/.cache/gaphor",
    "~/.local/share/gaphor",
  ]
end
