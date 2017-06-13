cask 'qlmobi' do
  version '0.5'
  sha256 '1035181685c3ed974bd45ade8f22717c62142ff6a75cf679128f8fb50ef26833'

  url "https://github.com/bfabiszewski/QLMobi/releases/download/v#{version}/QLMobi.qlgenerator.zip"
  appcast 'https://github.com/bfabiszewski/QLMobi/releases.atom',
          checkpoint: '6411eb86a26c0912d9f2213d3d20bddb7a9a351d3c15d507dab4e71576ea2c85'
  name 'QLMobi'
  homepage 'https://github.com/bfabiszewski/QLMobi'

  qlplugin 'QLMobi.qlgenerator'
end
