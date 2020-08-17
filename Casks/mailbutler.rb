cask "mailbutler" do
  version "2,3116-14156"
  sha256 "89a55640d7432a3a2c906c43ebd627ca3eb2762e5850c4f9b37593830200c628"

  url "https://downloads.mailbutler.io/sparkle/public/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name "Mailbutler"
  homepage "https://www.mailbutler.io/"

  depends_on macos: ">= :sierra"

  app "Mailbutler.app"
end
