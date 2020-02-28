cask 'qp' do
  version '1.0.1'
  sha256 'a4a5e6caa86b99fc54bf8db8d36def3b64ffbea5b03de094ec8db423425d8401'

  url "https://github.com/paybase/qp/releases/download/#{version}/qp-#{version}-darwin.tar.gz"
  appcast 'https://github.com/paybase/qp/releases'
  name 'The query-pipe: command-line (ND)JSON querying'
  homepage 'https://github.com/paybase/qp'

  binary 'qp'
end
