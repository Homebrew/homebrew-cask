cask "butler" do
  version "4.3.3,5096"
  sha256 :no_check

  url "https://manytricks.com/download/butler"
  appcast "https://manytricks.com/butler/appcast"
  name "Butler"
  homepage "https://manytricks.com/butler/"

  auto_updates true

  app "Butler.app"
end
