cask 'roboto' do
  version '1.0.6'
  sha256 'bb3c8580e2b49fc272c436feaf36c4c370fb3ac6ca52a377fc36ac20b20eec68'

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3-eu-west-1.amazonaws.com/electric-kangaroo-roboto/worker/Roboto.zip'
  appcast 'https://roboto.build/mac/app-cast.xml',
          :sha256 => '1064548b24bc5f2bf024af4a597c90f196d23a8c67cb5771a65fc1328e9df4e1'
  name 'Roboto'
  homepage 'https://roboto.build/'
  license :gratis

  app 'Roboto.app'

  caveats do
    discontinued
  end
end
