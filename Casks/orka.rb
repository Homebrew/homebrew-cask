cask 'orka' do
  version '1.2.0,6924a4c7'
  sha256 '3be344b879b01b54524065b1e2026633b77260d79823f23860dcc8149f32d127'

  # cli-builds-public.s3-eu-west-1.amazonaws.com/official/ was verified as official when first introduced to the cask
  url "https://cli-builds-public.s3-eu-west-1.amazonaws.com/official/#{version.before_comma}/#{version.after_comma}/macos/orka.zip"
  appcast 'https://orkadocs.macstadium.com/docs/downloads'
  name 'Orka CLI'
  homepage 'https://orkadocs.macstadium.com/docs'

  binary 'orka'
end
