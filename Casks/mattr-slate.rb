cask 'mattr-slate' do
  version '1.2.0'
  sha256 'd409ccda9ed09f5647175f8834650e141a7375ced9665bf6af237525665d4966'

  url "https://github.com/mattr-/slate/releases/download/v#{version}/Slate.zip"
  appcast 'https://github.com/mattr-/slate/releases.atom',
          checkpoint: '12a305e83d56fb2eab4c1341df73ea1faf5591838dc0ec636d7e06d72200bdb0'
  name 'Slate'
  homepage 'https://github.com/mattr-/slate'

  auto_updates true
  accessibility_access true
  conflicts_with cask: 'slate'

  app 'Slate.app'

  zap delete: [
                '~/.slate',
                '~/.slate.js',
                '~/Library/Application Support/com.slate.Slate',
              ]
end
