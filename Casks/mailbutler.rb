cask "mailbutler" do
  version "2,3120-14168"
  sha256 "ecb817e431693d930b5f33095b1ee7f2bca3131ebe1cb35d49f7146610f6ce1d"

  url "https://downloads.mailbutler.io/sparkle/public/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name "Mailbutler"
  desc "Personal assistant and productivity tool for Apple Mail"
  homepage "https://www.mailbutler.io/"

  depends_on macos: ">= :sierra"

  app "Mailbutler.app"
end
