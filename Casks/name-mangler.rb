cask "name-mangler" do
  version "3.6,3285"
  sha256 :no_check

  url "https://manytricks.com/download/namemangler"
  appcast "https://manytricks.com/namemangler/appcast/"
  name "Name Mangler"
  desc "Multi-file renaming tool"
  homepage "https://manytricks.com/namemangler/"

  auto_updates true

  app "Name Mangler.app"
end
