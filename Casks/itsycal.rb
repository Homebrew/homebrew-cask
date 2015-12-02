cask :v1 => 'itsycal' do
  version '0.10.8'
  sha256 'f9d49a3b0cf30cb59109740e7c415cee880f345ecbfc9fc3b8eb98485f8752d2'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  name 'Itsycal'
  appcast 'https://s3.amazonaws.com/itsycal/itsycal.xml',
          :sha256 => 'e5f3a432c8a1b2f123cbfba5e94123ab86a815dbad0f09f52649ca989d5212db'
  homepage 'http://www.mowglii.com/itsycal/'
  license :gratis

  app 'Itsycal.app'
end
