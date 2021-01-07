cask "desktoppr" do
  version "0.3"
  sha256 "9a2ef033fd05b3b559af91f8401897ab6311f1a79d71581502c2fa0e9c52e664"

  url "https://github.com/scriptingosx/desktoppr/releases/download/v#{version}/desktoppr-#{version}.pkg"
  name "desktoppr"
  desc "Command-line tool to set the desktop picture"
  homepage "https://github.com/scriptingosx/desktoppr"

  livecheck do
    url :url
    strategy :git
  end

  pkg "desktoppr-#{version}.pkg"

  uninstall pkgutil: "com.scriptingosx.desktoppr"
end
