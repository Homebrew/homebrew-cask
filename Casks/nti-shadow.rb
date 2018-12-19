cask 'nti-shadow' do
  version '5.0.0.55'
  sha256 'b25772787a1e900a8ef33cbad6c9c354bcf7d73d92f742440871bc20f4116df5'

  url "https://ftp4.nticorp.com/update/NTI_Shadow_#{version}_Free_Update_Mac.dmg"
  name "NTI Shadow #{version.major} for Mac"
  homepage 'http://www.nticorp.com/en/us/product/shadow_5_mac.asp'

  app "NTI Shadow #{version.major}.app"

  zap trash: [
               '~/Library/Preferences/com.achieva.NTIShadow41.plist',
               '~/Library/Logs/NTI Shadow.log',
             ]
end
