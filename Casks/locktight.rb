cask 'locktight' do
  version '1.2.1.1'
  sha256 '2524d3fcfe756bb07812110b090e21455e6397990947a4172775fe69280d90d9'

  url "https://github.com/aerickson/locktight/releases/download/locktight-#{version}/locktight-#{version}.zip"
  name 'LockTight'
  homepage 'https://github.com/aerickson/locktight'
  license :gpl

  prefpane 'LockTight.prefPane'
end
