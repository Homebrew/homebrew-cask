cask "mailbutler" do
  version "4025,28613"
  sha256 "2570d08c34482cd9a554c024198184379a7301f72fc86e94e9e649b4e453aeae"

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
