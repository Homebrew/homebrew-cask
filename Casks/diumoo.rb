cask 'diumoo' do
  version '1.5.0'
  sha256 'f6a6628dab6c64752f6827e453368c18dcd06962ee0823d51d51c439cf7e04b6'

  # github.com/shanzi/diumoo was verified as official when first introduced to the cask
  url "https://github.com/shanzi/diumoo/releases/download/v#{version}/diumoo.zip"
  appcast 'https://github.com/shanzi/diumoo/releases.atom',
          checkpoint: 'a821ab089dadfb4dbaa63b68c5c7725588f40a1e144488519f80fa67b05e5eb9'
  name 'diumoo'
  homepage 'http://diumoo.net/'

  app 'diumoo.app'
end
