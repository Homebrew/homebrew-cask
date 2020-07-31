cask "8bitdo-ultimate-software" do
  version :latest
  sha256 :no_check

  url "https://download.8bitdo.com/Ultimate-Software/8BitDo-Ultimate-Software-for-macOS.dmg"
  name "8BitDo Ultimate Software"
  homepage "https://support.8bitdo.com/ultimate-software.html"

  app "8BitDo Ultimate Software.app"

  zap trash: ["~/Library/Caches/com.8BitDo.Advance", "~/Library/Preferences/com.8BitDo.Advance.plist"]
end
