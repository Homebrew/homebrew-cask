cask "desktoppr" do
  version "0.4"
  sha256 "d4da2ee76007c89ba416930c674b30c77adefba7627b4fc643d3856c93d619ee"

  url "https://github.com/scriptingosx/desktoppr/releases/download/v#{version}/desktoppr-#{version}.pkg"
  appcast "https://github.com/scriptingosx/desktoppr/releases.atom"
  name "desktoppr"
  desc "Command-line tool to set the desktop picture"
  homepage "https://github.com/scriptingosx/desktoppr"

  pkg "desktoppr-#{version}.pkg"

  uninstall pkgutil: "com.scriptingosx.desktoppr"
end
