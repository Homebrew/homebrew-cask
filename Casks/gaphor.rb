cask "gaphor" do
  version "2.19.0"
  sha256 "017b209790c83101e4f5d4b60c5e9de6d68b1a8e53cc7796d8c1beeca3a50231"

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
