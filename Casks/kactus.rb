cask 'kactus' do
  version '0.3.1'
  sha256 '1776d3fa8442199f0b71e5cd6be3eb84b67b89fc9bcaf3b49a5d92a64f11d246'

  # github.com/kactus-io/kactus was verified as official when first introduced to the cask
  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip"
  appcast 'https://github.com/kactus-io/kactus/releases.atom',
          checkpoint: '5c7736cf0a0fb9087e1d7b7770ccc84da48bb3712e45751ee01aa86fb298b419'
  name 'Kactus'
  homepage 'https://kactus.io/'

  depends_on cask: 'sketch'

  app 'Kactus.app'
end
