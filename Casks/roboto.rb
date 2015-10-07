cask :v1 => 'roboto' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3-eu-west-1.amazonaws.com/electric-kangaroo-roboto/worker/Roboto.zip'
  name 'Roboto'
  appcast 'https://roboto.build/mac/app-cast.xml',
          :sha256 => '1064548b24bc5f2bf024af4a597c90f196d23a8c67cb5771a65fc1328e9df4e1'
  homepage 'https://roboto.build/'
  license :gratis

  app 'Roboto.app'
end
