cask :v1 => 'plainview' do
  version '1.0.178'
  sha256 'ff442b3e8995ab42c0908e2fafe07d14233bad72fff677a83cf9cf09b18a2e2c'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/plainviewapp/plainview_#{version}.zip"
  name 'Plainview'
  appcast 'http://barbariangroup.com/assets/appcasts/406/appcast.xml',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  homepage 'http://barbariangroup.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Plainview.app'
end
