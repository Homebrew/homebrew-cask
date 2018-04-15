cask 'duplicati' do
  version '2.0.3.5,2018-04-13'
  sha256 'cb6482512b33e872cf700eb41ce1d7950f35fe1561db4effbabcc44eafc6560a'

  # github.com/duplicati/duplicati was verified as official when first introduced to the cask
  url "https://github.com/duplicati/duplicati/releases/download/v#{version.before_comma}-#{version.before_comma}_canary_#{version.after_comma}/duplicati-#{version.before_comma}_canary_#{version.after_comma}.dmg"
  appcast 'https://github.com/duplicati/duplicati/releases.atom',
          checkpoint: '5f76021f6b6764682f02ae4d33dd93e9316c873bf6f4d7fd819119aeb70b2695'
  name 'Duplicati'
  homepage 'https://www.duplicati.com/'

  app 'Duplicati.app'

  zap trash: [
               '~/Library/Application Support/Duplicati',
               '~/.config/Duplicati',
             ]
end
