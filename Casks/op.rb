cask 'op' do
  version '0.1'
  sha256 'fccec086ef70d9fab464c8e5cb4b1748236cb7633c9aae52512fd6502686ad09'

  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_darwin_amd64_v#{version}.zip"
  appcast 'https://app-updates.agilebits.com/product_history/CLI',
          checkpoint: 'd33d33c7e3ee8eecdc68d529fd81c8a5291bce8ebf3125e674e58870ec039823'
  name 'op'
  homepage 'https://blog.agilebits.com/2017/09/06/announcing-the-1password-command-line-tool-public-beta/'

  binary 'op'
end
