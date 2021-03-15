cask "mudlet" do
  version "4.11.1"
  sha256 "cb770b17e9fa03dba473851732ab7f3661dbecff96a2835bbb723f10e326c85b"

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  appcast "https://github.com/Mudlet/Mudlet/releases.atom"
  name "Mudlet"
  desc "Multi-User Dungeon client"
  homepage "https://www.mudlet.org/"

  depends_on macos: ">= :high_sierra"

  app "Mudlet.app"
end
