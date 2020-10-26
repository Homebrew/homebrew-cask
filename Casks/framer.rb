cask "framer" do
  version "54543,1603715699"
  sha256 "d689e4d50ead0a6f095dd7d4c98393286aa0b8aeb3d32382438752140944b755"

  url "https://dl.framer.com/com.framer.desktop/#{version.before_comma}/#{version.after_comma}/FramerDesktop-#{version.before_comma}.zip"
  appcast "https://updates.framer.com/sparkle/com.framer.desktop"
  name "Framer"
  homepage "https://www.framer.com/desktop/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Framer.app"
end
