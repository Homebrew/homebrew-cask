cask 'secondbar' do
  version '1.1'
  sha256 '1f2a9d837bc66c93ed2f7a1d83ef95c44888cd266ffb7982ade14f91d996d6a6'

  # boastr.de is the official download host per the vendor homepage
  url 'http://boastr.de/SecondBar.zip'
  appcast 'https://blog.boastr.net/secondbar/appcast.xml',
          :sha256 => '733fd0d9c7c8fb25163f656cb80277217dbbf151d59bb75c2e95ccc1f2eca9e9'
  name 'SecondBar'
  homepage 'https://blog.boastr.net/?page_id=79'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SecondBar.app'
end
