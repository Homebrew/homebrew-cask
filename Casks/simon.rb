cask :v1 => 'simon' do
  version '4.1.1'
  sha256 'fa3f221882c769350647bd1904b95f22e4846ed582de1a99cb892828f4f6ba8c'

  url "http://www.dejal.com/download/simon-#{version}.zip"
  appcast 'http://www.dejal.com/appcast/?prod=simon',
          :sha256 => '7431a2e17604486863b071139da0665aec01e61a1447367b2f497080936e3f4b'
  name 'Simon'
  homepage 'http://www.dejal.com/simon/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Simon.app'
end
