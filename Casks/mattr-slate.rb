cask :v1 => 'mattr-slate' do
  version '1.2.0'
  sha256 'd409ccda9ed09f5647175f8834650e141a7375ced9665bf6af237525665d4966'

  # github.com is the official download host for this fork
  # see https://github.com/mattr-/slate/commit/148a51e50174c946c07c801a9f2b92222a4c0276
  url "https://github.com/mattr-/slate/releases/download/v#{version}/Slate.zip"
  appcast 'https://github.com/mattr-/slate/releases.atom'
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
