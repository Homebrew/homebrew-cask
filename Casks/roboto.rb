cask 'roboto' do
  version '1.0.6'
  sha256 'bb3c8580e2b49fc272c436feaf36c4c370fb3ac6ca52a377fc36ac20b20eec68'

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3-eu-west-1.amazonaws.com/electric-kangaroo-roboto/worker/Roboto.zip'
  appcast 'https://roboto.build/mac/app-cast.xml',
          :sha256 => '8d9dc15f4aa2cd6f2d11b95b3fdc7404d68c8f72a34463d65fae64fe05091f75'
  name 'Roboto'
  homepage 'https://roboto.build/'
  license :gratis

  app 'Roboto.app'

  caveats do
    discontinued
  end
end
