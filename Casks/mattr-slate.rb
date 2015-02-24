cask :v1 => 'mattr-slate' do
  version '1.2.0'
  sha256 '8d5405e9469ac7d1bfd8defe1e8661dedea50e6a'

  # github.com is the official download host for this fork
  # see https://github.com/mattr-/slate/commit/148a51e50174c946c07c801a9f2b92222a4c0276
  url "https://github.com/mattr-/slate/releases/download/v#{version}/Slate.zip"
  name 'Slate'
  homepage 'https://github.com/mattr-/slate'
  license :gpl

  app 'Slate.app'

  zap :delete => [
                  '~/.slate',
                  '~/.slate.js',
                  '~/Library/Application Support/com.slate.Slate',
                 ]
end
