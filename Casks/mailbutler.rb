cask "mailbutler" do
  version "2,3306-14489"
  sha256 "0621e4bda095d9f7dc7579b84e900f39ccdf04257823927f535279b5462fc330"

  url "https://downloads.mailbutler.io/sparkle/public/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name "Mailbutler"
  desc "Personal assistant and productivity tool for Apple Mail"
  homepage "https://www.mailbutler.io/"

  depends_on macos: ">= :sierra"

  app "Mailbutler.app"
end
