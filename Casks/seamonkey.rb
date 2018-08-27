cask 'seamonkey' do
  version '2.49.3'

  language 'de' do
    sha256 '3bc0a913e420f77f5a44b1ff763ba6f1995b1f775e4a432793a08a57ddf058d1'
    'de'
  end

  language 'en-GB' do
    sha256 'd22813aff2321cc17fdef594142a2c292ecb5f45b61f590c42b660b2c6c48a0e'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '8e39beaedc4d0f340c2d92e4f584f644cf9c18e03f3af0913ac9cc95092c9c98'
    'en-US'
  end

  language 'fr' do
    sha256 '620501393f2475037e4552442b61dfc3245ba31980a8be2647d76bc5edfbb571'
    'fr'
  end

  language 'it' do
    sha256 '3fb078dc08ca8756c76adde6313744d4f0ea3870b769c447070fd7f5f3796df8'
    'it'
  end

  language 'ru' do
    sha256 '623145931366e21042fc226bd8103b06721c4bd7106197c33b0447a9521439c4'
    'ru'
  end

  # mozilla.org/pub/seamonkey/releases was verified as official when first introduced to the cask
  url "https://ftp.mozilla.org/pub/seamonkey/releases/#{version}/mac/#{language}/SeaMonkey%20#{version}.dmg"
  appcast 'https://www.seamonkey-project.org/releases/'
  name 'SeaMonkey'
  homepage 'https://www.seamonkey-project.org/'

  auto_updates true

  app 'SeaMonkey.app'
end
