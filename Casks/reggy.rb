cask :v1 => 'reggy' do
  version '1.3'
  sha256 '5a4d72158bc524ab2f21c6cfad7b703f413707d9d078ec1923c268b110ff8dda'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/downloads/samsouder/reggy/Reggy_v#{version}.tbz"
  appcast 'http://reggyapp.com/appcast.xml',
          :sha256 => 'abfb19871bc0344469127f1cc35947b747cd3b1ee8ea2bfdd13f0d78c41c456f'
  name 'Reggy'
  homepage 'http://reggyapp.com/'
  license :oss

  app 'Reggy.app'
end
