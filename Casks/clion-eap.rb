cask :v1 => 'clion-eap' do
  version '140.2310.6'
  sha256 '02eafaa4ffef36bbc094e1e4de15710d2f2bcb8bf8e2be028757b6e55804be00'

  url "http://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  name 'CLion EAP'
  name 'CLion'
  homepage 'http://www.jetbrains.com/clion/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'CLion EAP.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
