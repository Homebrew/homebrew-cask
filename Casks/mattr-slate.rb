cask :v1 => 'mattr-slate' do
  version '1.2.0'
  sha256 'd409ccda9ed09f5647175f8834650e141a7375ced9665bf6af237525665d4966'

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
