cask "mailbutler" do
  version "2,3511-14656"
  sha256 "bc5744ca38287ed090aeff7e7e5d13786813cdfe588ecfea59cec8f4219c28ed"

  url "https://downloads.mailbutler.io/sparkle/public/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name "Mailbutler"
  desc "Personal assistant and productivity tool for Apple Mail"
  homepage "https://www.mailbutler.io/"

  depends_on macos: ">= :sierra"

  app "Mailbutler.app"
end
