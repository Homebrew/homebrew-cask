cask 'alice' do
  version '1.4'
  sha256 '0d6259bdff7fd0309b532188445d0dd4f7ea4d50f5570e9b46d282fbade74ce1'

  url "https://www.ps.uni-saarland.de/alice/download/Alice-#{version}-4-i386.dmg"
  appcast 'https://www.ps.uni-saarland.de/alice/download.html',
          checkpoint: '732e2eca0a1f81d70e7988eb8bcb8909de3613c6cff80363707d3eb2eb66d6cc'
  name 'Alice'
  homepage 'https://www.ps.uni-saarland.de/alice/'

  app 'Alice.app'

  caveats do
    path_environment_variable("#{appdir}/Alice.app/Contents/Resources/bin")
  end
end
