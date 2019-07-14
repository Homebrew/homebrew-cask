cask 'duplicati' do
  version '2.0.4.23,2019-07-14'
  sha256 '160ed45028da188853e714df922a6498cebae12170a77d4c2c087e49c8d7b5de'

  url "https://updates.duplicati.com/beta/duplicati-#{version.before_comma}_beta_#{version.after_comma}.dmg"
  appcast 'https://updates.duplicati.com/beta/latest-installers.js'
  name 'Duplicati'
  homepage 'https://www.duplicati.com/'

  depends_on formula: 'mono'

  app 'Duplicati.app'

  zap trash: [
               '~/Library/Application Support/Duplicati',
               '~/.config/Duplicati',
             ]
end
