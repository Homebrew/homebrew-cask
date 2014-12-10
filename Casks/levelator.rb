cask :v1 => 'levelator' do
  version '2.1.1'
  sha256 '2f22f1cf7851a987dcb194a504e43f8255261d428074ea7144e2683b79d6975d'

  url "http://cdn.conversationsnetwork.org/Levelator-#{version}.dmg"
  homepage 'http://www.conversationsnetwork.org/levelator/'
  license :unknown    # todo: improve this machine-generated value

  app 'Levelator.app'
end
