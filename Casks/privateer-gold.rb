cask 'privateer-gold' do
  version '1.03'
  sha256 '12efc85d6d943b49d9f6987a9749d735ab18d4f6e885f2f20d63663e5dce94b6'

  # downloads.sourceforge.net/privateer was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/privateer/PrivateerGold#{version}.dmg"
  appcast 'https://sourceforge.net/projects/privateer/rss'
  name 'Privateer Gemini Gold'
  homepage 'https://privateer.sourceforge.io/'

  app "Privateer Gold #{version}.app"
end
