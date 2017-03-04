cask 'gramps' do
  version '4.2.5-1'
  sha256 'a1b7e57c9349bf4137ee0d932f23882ff461460dcf99e7f03e3620e0edbf8d58'

  # github.com/gramps-project/gramps was verified as official when first introduced to the cask
  url "https://github.com/gramps-project/gramps/releases/download/v#{version.major_minor_patch}/Gramps-Intel-#{version}.dmg"
  appcast 'https://github.com/gramps-project/gramps/releases.atom',
          checkpoint: '98778e06cbb65bc14cc4f42ad301a9ef0f711f729a2ad5d4ae6492dac7a50ec9'
  name 'Gramps'
  homepage 'https://gramps-project.org/'

  app 'Gramps.app'
end
