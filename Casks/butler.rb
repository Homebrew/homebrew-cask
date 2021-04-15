cask "butler" do
  version "4.4.1,5111"
  sha256 :no_check

  url "https://manytricks.com/download/butler"
  name "Butler"
  desc "Arrange your tasks in a customizable configuration"
  homepage "https://manytricks.com/butler/"

  livecheck do
    url "https://manytricks.com/butler/appcast/"
    strategy :sparkle
  end

  auto_updates true

  app "Butler.app"
end
