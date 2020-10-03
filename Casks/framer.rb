cask "framer" do
  version "53731,1601544715"
  sha256 "9ad472da3bbab68bd47e4f23e94379eaf0960e412a9e51700a68c1eaa47d6be4"

  url "https://dl.framer.com/com.framer.desktop/#{version.before_comma}/#{version.after_comma}/FramerDesktop-#{version.before_comma}.zip"
  appcast "https://updates.framer.com/sparkle/com.framer.desktop"
  name "Framer"
  homepage "https://www.framer.com/desktop/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Framer.app"
end
