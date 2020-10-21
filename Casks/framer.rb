cask "framer" do
  version "54344,1602596589"
  sha256 "f78bf945a985afb60e53a24ae9d93907f2e246976421275dfeac139a56042ba4"

  url "https://dl.framer.com/com.framer.desktop/#{version.before_comma}/#{version.after_comma}/FramerDesktop-#{version.before_comma}.zip"
  appcast "https://updates.framer.com/sparkle/com.framer.desktop"
  name "Framer"
  homepage "https://www.framer.com/desktop/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Framer.app"
end
