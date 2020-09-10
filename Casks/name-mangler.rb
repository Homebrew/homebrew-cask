cask "name-mangler" do
  version "3.6"
  sha256 "920089b29f13e7a2036898b7dd720367698e92c1bbbb2b417bdad06a0c3e2cfa"

  url "https://manytricks.com/download/namemangler"
  appcast "https://manytricks.com/namemangler/appcast/"
  name "Name Mangler"
  desc "Multi-file renaming tool"
  homepage "https://manytricks.com/namemangler/"

  auto_updates true

  app "Name Mangler.app"
end
