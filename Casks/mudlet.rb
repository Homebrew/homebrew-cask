cask "mudlet" do
  version "4.13.1"
  sha256 "a96bc99c75bd40f85c0a23d675ab29bddb46d344e56ac6cfc4e4393529f7594a"

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  name "Mudlet"
  desc "Multi-User Dungeon client"
  homepage "https://www.mudlet.org/"

  livecheck do
    url "https://github.com/Mudlet/Mudlet"
    strategy :git
  end

  depends_on macos: ">= :high_sierra"

  app "Mudlet.app"
end
