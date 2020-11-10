cask "mailbutler" do
  version "2,3410-14492"
  sha256 "1bc0018c9c8b3cbef7ae788490b19c02cdc6bb25cb4140274b949e031fb2566d"

  url "https://downloads.mailbutler.io/sparkle/public/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name "Mailbutler"
  desc "Personal assistant and productivity tool for Apple Mail"
  homepage "https://www.mailbutler.io/"

  depends_on macos: ">= :sierra"

  app "Mailbutler.app"
end
