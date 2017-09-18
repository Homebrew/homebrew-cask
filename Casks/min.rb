cask 'min' do
  version '1.6.1'
  sha256 '01292fce4ce5f50255656c15e4f62891efc10b6dc3150f1663de931dd4905963'

  # github.com/minbrowser/min was verified as official when first introduced to the cask
  url "https://github.com/minbrowser/min/releases/download/v#{version}/Min-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/minbrowser/min/releases.atom',
          checkpoint: 'b45e63197e5bed028d6cdb2f7417359067b789daeff3e79d7b5ee5de416ffa32'
  name 'Min'
  homepage 'https://minbrowser.github.io/min/'

  app 'Min.app'

  zap delete: [
                '~/Library/Application Support/Min',
                '~/Library/Caches/Min',
                '~/Library/Saved Application State/com.electron.min.savedState',
              ]
end
