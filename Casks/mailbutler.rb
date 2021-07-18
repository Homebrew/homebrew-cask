cask "mailbutler" do
  version "4215,28619"
  sha256 "24dd783019490a0185362ed58e9dd949eebcc34f9d4886f4dfa7103d8e399302"

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
