cask 'duplicati' do
  version '2.0.4.23,2019-07-14'
  sha256 '160ed45028da188853e714df922a6498cebae12170a77d4c2c087e49c8d7b5de'

  # github.com/duplicati/duplicati was verified as official when first introduced to the cask
  url "https://github.com/duplicati/duplicati/releases/download/v#{version.before_comma}-#{version.before_comma}_beta_#{version.after_comma}/duplicati-#{version.before_comma}_beta_#{version.after_comma}.dmg"
  appcast 'https://github.com/duplicati/duplicati/releases.atom'
  name 'Duplicati'
  homepage 'https://www.duplicati.com/'

  depends_on formula: 'mono'

  app 'Duplicati.app'

  zap trash: [
               '~/Library/Application Support/Duplicati',
               '~/.config/Duplicati',
             ]
end
