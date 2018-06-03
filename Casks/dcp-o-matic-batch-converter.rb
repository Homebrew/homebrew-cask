cask 'dcp-o-matic-batch-converter' do
  version '2.12.6'
  sha256 '6791be7a476c04f0aa838b446f6ef2f6d6f5c8e770ac8a3a77701d0409a6132d'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download',
          checkpoint: '510616fe834b672a089e02a95abbb43f7bee5ba80793d30c4adfb48b8de1411d'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app 'DCP-o-matic #{version.major} Batch converter.app'
end
