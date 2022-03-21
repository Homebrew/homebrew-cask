cask "gaphor" do
  version "2.9.2"
  sha256 "47ac7f5c302e5860687cebd59c46c7d2e4358c8c7d6e26491c7353cfc42a0ee6"

  url "https://github.com/gaphor/gaphor/releases/download/#{version}/Gaphor-#{version}.dmg",
      verified: "github.com/gaphor/gaphor/"
  name "Gaphor"
  desc "UML/SysML modeling tool"
  homepage "https://gaphor.org/"

  app "Gaphor.app"

  uninstall quit: "Gaphor-#{version}"

  zap trash: [
    "~/.cache/gaphor",
    "~/.local/share/gaphor",
  ]
end
