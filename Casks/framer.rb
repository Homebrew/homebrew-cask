cask "framer" do
  version "53127,1599566290"
  sha256 "5be936f8e9e670d1ef7fa8c572eb1190954e55f88252f6e7d1df334658c9223a"

  url "https://dl.framer.com/com.framer.desktop/#{version.before_comma}/#{version.after_comma}/FramerDesktop-#{version.before_comma}.zip"
  appcast "https://updates.framer.com/sparkle/com.framer.desktop"
  name "Framer"
  homepage "https://www.framer.com/desktop/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Framer.app"
end
