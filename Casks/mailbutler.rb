cask "mailbutler" do
  version "3919,26021"
  sha256 "81bb0b66b0e09ddcc1fa662cb9d079d586f6f36a221df65c2dc5d19436154d7f"

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
