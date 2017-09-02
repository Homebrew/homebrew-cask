cask 'bitcore' do
  version '0.14.1.6,2'
  sha256 '41350127fdd54380b4a339459669e3abc89f9a8e3a4d9a4e295b2d35aa97a5ce'

  # github.com/LIMXTEC/BitCore was verified as official when first introduced to the cask
  url "https://github.com/LIMXTEC/BitCore/releases/download/#{version.before_comma}/BitCore-Qt-#{version.before_comma.dots_to_hyphens}-#{version.after_comma}.dmg"
  appcast 'https://github.com/LIMXTEC/BitCore/releases.atom',
          checkpoint: '5897114ca17bf280d2f48c8e2b83a78e3fd995527b965296f5233f74103f28ab'
  name 'BitCore Core'
  homepage 'https://bitcore.cc/'

  app 'BitCore-Qt.app'

  zap trash: '~/Library/Application Support/Bitcore'
end
