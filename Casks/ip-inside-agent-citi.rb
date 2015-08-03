cask :v1 => "ip-inside-agent-citi" do
  version :latest
  sha256 :no_check

  url "https://open.citibank.co.kr/3rdParty/interezen/OSX-MAC/IPinsideAgent.dmg"
  name "IP inside Agent for Citi Bank"
  homepage "https://open.citibank.co.kr"
  license :gratis

  pkg "IPinsideAgent.pkg"
  uninstall :script => "/opt/homebrew-cask/Caskroom/ip-inside-agent-citi/latest/IPinside Uninstaller.app/Contents/MacOS/IPinside Uninstaller"
end
