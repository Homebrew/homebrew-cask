cask 'gramps' do
  version '4.2.2-4'
  sha256 '433d18b0cd1ec88048b39b33a76f1f56d6124b91c9feb63b139b2a449870a3eb'

  # github.com/gramps-project/gramps was verified as official when first introduced to the cask
  url "https://github.com/gramps-project/gramps/releases/download/v#{version.major_minor_patch}/Gramps-Intel-#{version}.dmg"
  appcast 'https://github.com/gramps-project/gramps/releases.atom',
          checkpoint: 'a69e86f46795f5baab0de0272814a5fcd5e0ad1a139f316189802184425dfb43'
  name 'Gramps'
  homepage 'https://gramps-project.org/'
  license :gpl

  app 'Gramps.app'
end
