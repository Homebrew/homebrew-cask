cask "framer" do
  version "57017,1606907524"
  sha256 "8fe579d6a722bea3c9c4bac59c587fe7471a74fa852569d11d9a3bd4dbd72a50"

  url "https://dl.framer.com/com.framer.desktop/#{version.before_comma}/#{version.after_comma}/FramerDesktop-#{version.before_comma}.zip"
  appcast "https://updates.framer.com/sparkle/com.framer.desktop"
  name "Framer"
  homepage "https://www.framer.com/desktop/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Framer.app"
end
