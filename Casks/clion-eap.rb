cask :v1 => 'clion-eap' do
  version '140.1740.3'
  sha256 '906cddde3fa6cba3afd9b66e1dd303ab7bf77ab4dc061e2d692932f30c818679'

  url "http://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  homepage 'http://www.jetbrains.com/clion/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'CLion EAP.app'
end
