cask 'prudent' do
  version '79.0.3945.88,21'
  sha256 '2ae056b051f72e31b1ba39c23d2ec8d7f5192f53ad19fdd7630df74d9e89c1d9'

  # github.com/PrudentMe/main/ was verified as official when first introduced to the cask
  url "https://github.com/PrudentMe/main/releases/download/#{version.after_comma}/Prudent.zip"
  appcast 'https://github.com/PrudentMe/main/releases.atom',
          configuration: version.after_comma
  name 'Prudent'
  homepage 'https://prudent.me/'

  app 'Prudent.app'
end
