cask 'duplicati' do
  version '2.0.4.5,2018-11-28'
  sha256 '388d0fc6bfefd86d058e277c4152df4fb63c0f61fb7a116160f51f1ed479b0f0'

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
