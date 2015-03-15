cask :v1 => 'clion-eap' do
  version '141.102.4'
  sha256 '63227a0613d0406087b045b9eb17fadcc9affaed9707e2adcce7d0c0d37ae2a0'

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
