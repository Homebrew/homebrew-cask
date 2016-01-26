cask 'reggy' do
  version '1.3'
  sha256 '5a4d72158bc524ab2f21c6cfad7b703f413707d9d078ec1923c268b110ff8dda'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/downloads/samsouder/reggy/Reggy_v#{version}.tbz"
  appcast 'http://reggyapp.com/appcast.xml',
          checkpoint: '55fcc99cd8afc069bda84df232d9762b5e4ea647c1d2e9bf3cb0fe5010797185'
  name 'Reggy'
  homepage 'http://reggyapp.com/'
  license :oss

  app 'Reggy.app'
end
