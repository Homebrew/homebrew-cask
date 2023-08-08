cask "gaphor" do
  version "2.19.3"
  sha256 "44c48f8717d4cb8e07c140e5f0ba85b05843c70d5b37ac312d2fd5ccbdcf6647"

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
