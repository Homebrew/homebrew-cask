cask :v1 => 'clion-eap' do
  version '140.569.17'
  sha256 'f9f67ffdcc9f41216bc8e1b36def0d1c2128d4e55a364cae7b17df1b4eb092bf'

  url "http://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  homepage 'http://www.jetbrains.com/clion/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'CLion EAP.app'
end
