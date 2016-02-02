cask 'lektor' do
  version '1.2'
  sha256 'f27aa608d015d233788f76faeb478554b7a01e4d9c2ab68359a4d969507d34b3'

  # github.com/lektor/lektor verified as official when first introduced to the cask
  url "https://github.com/lektor/lektor/releases/download/#{version}/Lektor-#{version}.dmg"
  appcast 'https://github.com/lektor/lektor/releases.atom',
          checkpoint: '628010063189f2778707f86a70f6eac4bf101600e98fd9fef1e35e05f5c89751'
  name 'Lektor'
  homepage 'https://www.getlektor.com/'
  license :oss

  app 'Lektor.app'
end
