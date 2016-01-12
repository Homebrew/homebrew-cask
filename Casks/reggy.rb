cask 'reggy' do
  version '1.3'
  sha256 '5a4d72158bc524ab2f21c6cfad7b703f413707d9d078ec1923c268b110ff8dda'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/downloads/samsouder/reggy/Reggy_v#{version}.tbz"
  appcast 'http://reggyapp.com/appcast.xml',
          :sha256 => '090538b84203dda95763f396de893386eb288623d5076453f28b2bf62f6bfb6a'
  name 'Reggy'
  homepage 'http://reggyapp.com/'
  license :oss

  app 'Reggy.app'
end
