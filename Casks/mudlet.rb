cask "mudlet" do
  version "4.10.0"
  sha256 "c6e1746191e6231d17eaa6ecb387f5cd21fa70b9ac8dd15e82af35ac6812d1c7"

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  appcast "https://github.com/Mudlet/Mudlet/releases.atom"
  name "Mudlet"
  desc "Cross-platform and open-source MUD client with scripting in Lua"
  homepage "https://www.mudlet.org/"

  depends_on macos: ">= :high_sierra"

  app "Mudlet.app"
end
