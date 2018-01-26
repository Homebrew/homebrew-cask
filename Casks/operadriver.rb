cask 'operadriver' do
  version '2.32'
  sha256 'f213236bd6d1eb2bb8c212d544ce1e94dbf0b04dfa24bcf21246e55ed39659da'

  url "https://github.com/operasoftware/operachromiumdriver/releases/download/v.#{version}/operadriver_mac64.zip"
  appcast 'https://github.com/operasoftware/operachromiumdriver/releases.atom',
          checkpoint: '0e9937b6a9d0106a253a8c9308cf78bb1cb1c91258183be169b133f177a05c28'
  name 'operachromiumdriver'
  homepage 'https://github.com/operasoftware/operachromiumdriver'

  binary 'operadriver_mac64/operadriver'
end
