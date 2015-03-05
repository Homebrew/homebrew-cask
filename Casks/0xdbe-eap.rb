cask :v1 => '0xdbe-eap' do
  version '139.795.5'
  sha256 'a94ccacacffa1a911b6476c9016993e0aaf6b0438a61dbf0061c2d330dd078f9'

  url "http://download.jetbrains.com/dbe/0xdbe-#{version}.dmg"
  name '0xDBE EAP'
  name '0xDBE'
  homepage 'http://www.jetbrains.com/dbe/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app '0xDBE EAP.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
