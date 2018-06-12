cask 'privateer-gold' do
  version '1.03'
  sha256 '12efc85d6d943b49d9f6987a9749d735ab18d4f6e885f2f20d63663e5dce94b6'

  url "https://downloads.sourceforge.net/privateer/PrivateerGold#{version}.dmg"
  appcast 'https://sourceforge.net/projects/privateer/rss'
  name 'Privateer Gemini Gold'
  homepage 'http://privateer.sourceforge.net/'

  app "Privateer Gold #{version}.app"
end
