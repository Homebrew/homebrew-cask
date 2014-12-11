cask :v1 => 'secondbar' do
  version '1.1'
  sha256 '1f2a9d837bc66c93ed2f7a1d83ef95c44888cd266ffb7982ade14f91d996d6a6'

  url 'http://boastr.de/SecondBar.zip'
  appcast 'http://blog.boastr.net/secondbar/appcast.xml',
          :sha256 => '1b991a6242ac7922bc4e76db810c6fea9ce63c1bc49e162b94e0ea2b250f2e4a'
  homepage 'http://blog.boastr.net/?page_id=79'
  license :unknown    # todo: improve this machine-generated value

  app 'SecondBar.app'
end
