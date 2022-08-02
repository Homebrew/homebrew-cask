cask "leech" do
  version "3.1.7,3161"
  sha256 :no_check

  url "https://manytricks.com/download/leech"
  name "Leech"
  desc "Lightweight download manager"
  homepage "https://manytricks.com/leech/"

  livecheck do
    url "https://manytricks.com/leech/appcast/"
    strategy :sparkle
  end

  auto_updates true

  app "Leech.app"
end
