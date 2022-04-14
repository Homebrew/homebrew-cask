cask "cider" do
  version "1.14.3"
  sha256 "bc99ba04122f17cd0a8f4cd6413b13d83ec369d4c3a21cedb75fd6990144618f"
   
  url "https://github.com/ciderapp/Cider/releases/download/macos-beta/Cider.dmg"
  name "Cider"
  desc "An open source and community oriented Apple Music client for Windows, Linux, macOS, and more."
  homepage "https://cider.sh"

  auto_updates true

  app "Cider.app"
end

