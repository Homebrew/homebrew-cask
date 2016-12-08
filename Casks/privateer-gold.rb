cask 'privateer-gold' do
  version '1.03'
  sha256 '12efc85d6d943b49d9f6987a9749d735ab18d4f6e885f2f20d63663e5dce94b6'

  url "https://downloads.sourceforge.net/privateer/PrivateerGold#{version}.dmg"
  appcast 'https://sourceforge.net/projects/privateer/rss',
          checkpoint: 'fff4235265cba62024406307614911ad78bd4ee5fc8fde4a1aa74b0dece4b085'
  name 'Privateer Gemini Gold'
  homepage 'http://privateer.sourceforge.net/'

  app "Privateer Gold #{version}.app"
end
