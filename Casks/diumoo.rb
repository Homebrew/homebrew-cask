cask 'diumoo' do
  version '1.5.0'
  sha256 'f6a6628dab6c64752f6827e453368c18dcd06962ee0823d51d51c439cf7e04b6'

  # github.com/shanzi/diumoo was verified as official when first introduced to the cask
  url "https://github.com/shanzi/diumoo/releases/download/v#{version}/diumoo.zip"
  appcast 'https://github.com/shanzi/diumoo/releases.atom',
          checkpoint: 'ff1e48248c084bfb167a549c76a09bd7b5a24ab91912255a5b8e95be90da5b33'
  name 'diumoo'
  homepage 'http://diumoo.net/'
  license :gratis

  app 'diumoo.app'
end
