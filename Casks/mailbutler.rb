cask "mailbutler" do
  version "2,3501-14654"
  sha256 "03b2c1ec0919e065503cef59ed9e919f641f2f78a21d0e94a215eb3761b32844"

  url "https://downloads.mailbutler.io/sparkle/public/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name "Mailbutler"
  desc "Personal assistant and productivity tool for Apple Mail"
  homepage "https://www.mailbutler.io/"

  depends_on macos: ">= :sierra"

  app "Mailbutler.app"
end
