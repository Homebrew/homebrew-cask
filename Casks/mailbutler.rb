cask "mailbutler" do
  version "3913,26018"
  sha256 "258d7c945ee6db508905f024a07713da39120ac5c58a73a435f63e89f4b7befe"

  url "https://downloads.mailbutler.io/sparkle/public/Mailbutler_#{version.before_comma}-#{version.after_comma}.zip"
  name "Mailbutler"
  desc "Personal assistant and productivity tool for Apple Mail"
  homepage "https://www.mailbutler.io/"

  livecheck do
    url "https://www.mailbutler.io/appcast2.php"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Mailbutler.app"
end
