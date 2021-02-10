cask "mailbutler" do
  version "2,3511-14657"
  sha256 "399b2df25f6dd537269255e19df198aa53a46d41cb6205e3a00a23c64b2dfb26"

  url "https://downloads.mailbutler.io/sparkle/public/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name "Mailbutler"
  desc "Personal assistant and productivity tool for Apple Mail"
  homepage "https://www.mailbutler.io/"

  depends_on macos: ">= :sierra"

  app "Mailbutler.app"
end
