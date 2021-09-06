cask "name-mangler" do
  version "3.7.3,3327"
  sha256 :no_check

  url "https://manytricks.com/download/namemangler"
  name "Name Mangler"
  desc "Multi-file renaming tool"
  homepage "https://manytricks.com/namemangler/"

  livecheck do
    url "https://manytricks.com/namemangler/appcast/"
    strategy :sparkle
  end

  auto_updates true

  app "Name Mangler.app"
end
