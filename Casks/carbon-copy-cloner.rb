cask 'carbon-copy-cloner' do
  version '4.1.15.4549'
  sha256 'f38819717b85fffea19536b6029d77f2dedf566b86bb8fabaf977b5dbc567459'

  url "https://bombich.com/software/download_ccc.php?v=#{version}"
  name 'Carbon Copy Cloner'
  homepage 'https://bombich.com/'

  app 'Carbon Copy Cloner.app'
end
