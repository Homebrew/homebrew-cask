cask 'react-studio' do
  version '1.4,323'
  sha256 '32e1cad1849f5b74b97f2a891da81a699b2ad0b37b5eac2b4a7404c537a2ed67'

  # s3.amazonaws.com/sc.neonto.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/sc.neonto.com/ReactStudio_v#{version.before_comma.no_dots}_build#{version.after_comma}.zip"
  name 'ReactStudio'
  homepage 'https://reactstudio.com/'

  app 'React Studio.app'
end
