cask 'orka' do
  version '1.3.0,c710094'
  sha256 '4178c1f16d82e9b93a825419c6228b7d8237b609082537732acef387ee5914f5'

  # cli-builds-public.s3-eu-west-1.amazonaws.com/official/ was verified as official when first introduced to the cask
  url "https://cli-builds-public.s3-eu-west-1.amazonaws.com/official/#{version.before_comma}/#{version.after_comma}/macos/orka.zip"
  appcast 'https://orkadocs.macstadium.com/docs/downloads'
  name 'Orka CLI'
  homepage 'https://orkadocs.macstadium.com/docs'

  binary 'orka'
end
