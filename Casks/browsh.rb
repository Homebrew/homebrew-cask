cask 'browsh' do
  version '1.6.4'
  sha256 '1ca4cc0f1f9afd0d149a0f4e3db9ccc187479ab6fa125ab0be99de45a597ff65'

  # github.com/browsh-org/browsh was verified as official when first introduced to the cask
  url "https://github.com/browsh-org/browsh/releases/download/v#{version}/browsh_#{version}_darwin_amd64.tar.gz"
  appcast 'https://github.com/browsh-org/browsh/releases.atom'
  name 'browsh'
  homepage 'https://www.brow.sh/'

  binary 'browsh'
end
