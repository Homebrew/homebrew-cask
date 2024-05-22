cask "name-mangler" do
  version "3.9.1"
  sha256 :no_check

  url "https://manytricks.com/download/namemangler"
  name "Name Mangler"
  desc "Multi-file renaming tool"
  homepage "https://manytricks.com/namemangler/"

  livecheck do
    url "https://manytricks.com/namemangler/appcast/"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Name Mangler.app"
end
