cask '1password-cli' do
  version '0.1'
  sha256 'fccec086ef70d9fab464c8e5cb4b1748236cb7633c9aae52512fd6502686ad09'

  url "https://cache.agilebits.com/dist/1P/op/pkg/v0.1/op_darwin_amd64_v#{version}.zip"
  name '1Password CLI'
  homepage 'https://app-updates.agilebits.com/product_history/CLI'

  binary 'op'
end
