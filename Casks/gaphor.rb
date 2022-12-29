cask "gaphor" do
  version "2.14.2"
  sha256 "72e887c45f6d3869f202f1261c4d895e61a6a923a417d72f5ee07dec820bced8"

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
