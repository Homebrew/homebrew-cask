cask 'horst' do
  version '1.2.4'
  sha256 '85febd47c9a5add361b2022a161baa5879982e0a3f7de90bdd1f9a41f4057c67'

  url "http://penck.de/download/horst/zip/#{version}"
  name 'Horst'
  homepage 'http://penck.de/horst/'
  license :freemium

  depends_on macos: '>= :lion'

  app 'Horst.app'
end
