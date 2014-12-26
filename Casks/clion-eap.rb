cask :v1 => 'clion-eap' do
  version '140.1221.2'
  sha256 'e5a903cb713cd255224c681cd59e9ba07296b61c019420ea02aa47d4da596840'

  url "http://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  homepage 'http://www.jetbrains.com/clion/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'CLion EAP.app'
end
