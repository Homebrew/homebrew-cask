cask :v1 => 'prepros' do
  version :latest
  sha256 :no_check

  # the vendor maintains a bit.ly link to the latest version they store on Amazon S3
  url 'http://bit.ly/prepros-mac'
  name 'Prepros'
  homepage 'https://prepros.io/'
  license :commercial

  app 'Prepros.app'
end
