cask "h-plus" do
  version "1.0"
  sha256 "08dde89ead7f723eb84ff8da9b24734426c655fb4d60bb3a8261b989c12f3861"

  url "https://github.com/NurikDz/H-Plus/releases/download/H%2B/H%2B.dmg"
  name "H+"
  desc "Streaming app with liquid glass interface for movies and series"
  homepage "https://github.com/NurikDz/H-Plus"

  depends_on macos: :big_sur

  app "H+.app"
end