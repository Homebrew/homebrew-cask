cask 'persepolis-download-manager' do
  version '2.4.2'
  sha256 '855756ae23ff672890f05c38bd1e146ee2d4ec218a920026ac26f286a98422a4'

  # github.com/persepolisdm/persepolis was verified as official when first introduced to the cask
  url "https://github.com/persepolisdm/persepolis/releases/download/#{version}/persepolis_#{version.dots_to_underscores}_mac.dmg"
  appcast 'https://github.com/persepolisdm/persepolis/releases.atom',
          checkpoint: '691d6a7e5af0135e95912ee8119af7f23a1293b2b4337920dc3c63b2ac146737'
  name 'Persepolis'
  homepage 'https://persepolisdm.github.io/'

  app 'Persepolis Download Manager.app'
end
