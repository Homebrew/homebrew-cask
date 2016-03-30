cask 'fcs-remover' do
  version '3.1.3.0'
  sha256 'ba639f9e3286a7b173cf900cf2aba07f27e64706ac4aa2443b42389ca09e0014'

  url "https://www.digitalrebellion.com/download/fcsremover?version=#{version.no_dots}"
  name 'FCS Remover'
  homepage 'https://www.digitalrebellion.com/fcsremover/'
  license :gratis

  app 'FCS Remover.app'

  zap delete: '~/Library/Preferences/com.digitalrebellion.FCSRemover.plist'
end
