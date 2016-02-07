cask 'roboto' do
  version '1.0.6'
  sha256 'bb3c8580e2b49fc272c436feaf36c4c370fb3ac6ca52a377fc36ac20b20eec68'

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3-eu-west-1.amazonaws.com/electric-kangaroo-roboto/worker/Roboto.zip'
  appcast 'https://roboto.build/mac/app-cast.xml',
          checkpoint: 'fdf33b58c671046665bd88507682b2965d7532dd21aa3ffe4215489db27f3c6b'
  name 'Roboto'
  homepage 'https://roboto.build/'
  license :gratis

  app 'Roboto.app'

  caveats do
    discontinued
  end
end
