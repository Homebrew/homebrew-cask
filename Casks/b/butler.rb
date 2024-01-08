cask "butler" do
  version "4.4.8"
  sha256 :no_check

  url "https://manytricks.com/download/butler"
  name "Butler"
  desc "Arrange your tasks in a customisable configuration"
  homepage "https://manytricks.com/butler/"

  livecheck do
    url "https://manytricks.com/butler/appcast/"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Butler.app"
end
