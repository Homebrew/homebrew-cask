cask 'lektor' do
  version '1.2.1'
  sha256 'd6d984eddcefcae9397e1fb10d96f2fd61324a9f2a7008cea4edad2ee8743feb'

  # github.com/lektor/lektor verified as official when first introduced to the cask
  url "https://github.com/lektor/lektor/releases/download/#{version}/Lektor-#{version}.dmg"
  appcast 'https://github.com/lektor/lektor/releases.atom',
          checkpoint: '1b283900aa1f42ce2a9cb6fe1bfc722729e3b83fea8630c46e61093d8b04a46b'
  name 'Lektor'
  homepage 'https://www.getlektor.com/'
  license :oss

  app 'Lektor.app'
end
