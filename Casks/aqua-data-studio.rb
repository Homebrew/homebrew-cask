cask 'aqua-data-studio' do
  version '18.5.0'
  sha256 '744955217e65c21d64ed0b7f5974e6cb75fb66ef2e2bde59c8ad384b7169d140'

  url "http://downloads.aquafold.com/v#{version.major_minor}.0/osx/ads-osx-#{version}.tar.gz"
  appcast 'http://downloads.aquafold.com/',
          checkpoint: '58405a1c02cb72a34fdc6f48176bdcd47d5ddefb82a8d7f757dc9bea683c38a7'
  name 'Aquafold Aqua Data Studio'
  homepage 'http://www.aquafold.com/aquadatastudio.html'

  app 'Aqua Data Studio.app'
end
