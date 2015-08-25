cask :v1 => 'image2icon' do
  version '2.1'
  sha256 'c04c2cca6f6531271579af9f767322c9b08fc435dabb158929312ddceb1d824e'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://sf-applications.s3.amazonaws.com/Image2Icon/app-releases/Image2icon#{version}.zip"
  name 'Image2icon'
  homepage 'http://www.img2icnsapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Image2Icon.app'
end
