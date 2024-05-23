cask "leech" do
  version "3.2"
  sha256 :no_check

  url "https://manytricks.com/download/leech"
  name "Leech"
  desc "Lightweight download manager"
  homepage "https://manytricks.com/leech/"

  livecheck do
    url "https://manytricks.com/leech/appcast/"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Leech.app"
end
