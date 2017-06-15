cask 'comma-chameleon' do
  version '0.5.2'
  sha256 'be08b2088d4065f797d8943ee213882779f99d7130467ed73d0f4d5b73dc02fb'

  # github.com/theodi/comma-chameleon was verified as official when first introduced to the cask
  url "https://github.com/theodi/comma-chameleon/releases/download/#{version}/Comma.Chameleon-darwin-x64.zip"
  appcast 'https://github.com/theodi/comma-chameleon/releases.atom',
          checkpoint: '69d6c44cff9461e20c4152b819e978ad88abf1e029c2f1f0be2b35b320da8d43'
  name 'Comma Chameleon'
  homepage 'https://comma-chameleon.io/'

  app 'comma-chameleon-darwin-x64/comma-chameleon.app'
end
