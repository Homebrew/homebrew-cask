cask 'polyphone' do
  version '1.8'
  sha256 '877f149b19c12c03f4c97b5f06b4c0e9d0e2b84c674a93146619c1cc24b16b69'

  # sourceforge.net/polyphone was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/polyphone/polyphone-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/polyphone/rss',
          checkpoint: '609b92b4f61512809cb2bac131873deac0b62d085a2ae617415d2fe585107fc3'
  name 'Polyphone'
  homepage 'https://polyphone-soundfonts.com/'

  app 'Polyphone.app'
end
