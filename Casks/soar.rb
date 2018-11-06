cask 'soar' do
  version '0.8.1'
  sha256 '1938433fcba35e40757489bfc135b7668ad614e99cc6c1cdc05f76fe2d6f9e45'

  url 'https://github.com/XiaoMi/soar/releases/download/v0.8.1/soar.darwin-amd64'
  name 'SQL Optimizer And Rewriter'
  homepage 'https://github.com/XiaoMi/soar'

  binary 'soar.darwin-amd64',     target: 'soar'
end
