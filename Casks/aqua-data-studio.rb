cask 'aqua-data-studio' do
  version '20.0.0'
  sha256 '0a08f44e7cf9787d7d7817ca7c98cbdb00d590c7cd85bd7af025040f64db95b8'

  url "http://downloads.aquafold.com/v#{version.major_minor}.0/osx/ads-osx-#{version}.tar.gz"
  appcast 'https://www.aquafold.com/aquadatastudio_downloads'
  name 'Aquafold Aqua Data Studio'
  homepage 'https://www.aquafold.com/aquadatastudio'

  app 'Aqua Data Studio.app'
end
