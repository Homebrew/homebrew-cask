cask "mailbutler" do
  version "4610,2029752"
  sha256 "a8bf6824a400727c8e291ee1175c49e504e522bc8046e5bfbf03cc59dfb24aeb"

  url "https://downloads.mailbutler.io/sparkle/public/Mailbutler_#{version.before_comma}-#{version.after_comma}.zip"
  name "Mailbutler"
  desc "Personal assistant and productivity tool for Apple Mail"
  homepage "https://www.mailbutler.io/"

  livecheck do
    url "https://www.mailbutler.io/appcast2.php"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "Mailbutler.app"
end
