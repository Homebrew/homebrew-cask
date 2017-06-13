cask 'aurora' do
  version '5.0.3'
  sha256 '4293c5ffdf6eb8e5d7031f02b1c83238472f486fe8a964f2f62ac71c72c22eb2'

  url "https://www.oneperiodic.com/files/Aurora%20v#{version}.zip"
  appcast "https://www.oneperiodic.com/aurora#{version.major}.xml",
          checkpoint: '204f30afe061ed20b223e8dfc498388c4c9b861efe0d5af2be6594aa19121de2'
  name 'Aurora'
  homepage 'https://www.oneperiodic.com/products/aurora/'

  app 'Aurora.app'
end
