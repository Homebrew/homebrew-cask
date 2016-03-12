cask 'bitbar' do
  version '1.7.0'
  sha256 '0396bcbb3b8ae81b5d8b299aa689253dfeaad08ce5a66cd88f6c1191d8ed0c18'

  url "https://github.com/matryer/bitbar/releases/download/v#{version}/BitBar-v#{version}.zip"
  appcast 'https://github.com/matryer/bitbar/releases.atom',
          checkpoint: 'd6b93aae146cc1403f4e5ff37041eab3aca98444dd567a808bd348d3a7137ffc'
  name 'BitBar'
  homepage 'https://github.com/matryer/bitbar/'
  license :mit

  app 'BitBar.app'
end
