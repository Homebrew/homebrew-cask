cask :v1 => 'roboto' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3-eu-west-1.amazonaws.com/electric-kangaroo-roboto/worker/Roboto.zip'
  name 'Roboto'
  appcast 'https://roboto.build/mac/app-cast.xml',
          :sha256 => 'e8ace5183bbceaa8972a5e493f256f73f5a2d595a588231e43de8d21b6a105c2'
  homepage 'https://roboto.build/'
  license :gratis

  app 'Roboto.app'
end
