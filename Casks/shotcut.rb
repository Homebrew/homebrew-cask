cask 'shotcut' do
  version '17.05.03'
  sha256 'afee561c5a1165b66bfaeb4f01794f4f134b68c5b878c8c0247a4f9ecc48d46e'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-osx-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          checkpoint: 'e7d908f37dae5fb618909fdc7ec648acbcce54a9a5af91f8bc4e2ef9580f1b15'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
