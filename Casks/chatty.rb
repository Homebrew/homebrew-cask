cask 'chatty' do
  version '0.8.3'
  sha256 'e62c3409fd42e76a1c73a4a31076a4169162a566bd4c9e659cc30e31706bbbc6'

  # github.com/chatty/chatty was verified as official when first introduced to the cask
  url "https://github.com/chatty/chatty/releases/download/v#{version}/Chatty_#{version}.zip"
  appcast 'https://github.com/chatty/chatty/releases.atom',
          checkpoint: '626bce8b501ab9a8e61e3feb9869c9780178e8e873a620b8048454c94915cdee'
  name 'Chatty'
  homepage 'https://chatty.github.io'
  license :mit

  # There is no sub-folder in the ZIP; the root *is* the folder
  suite '.', target: 'Chatty'

  zap delete: '~/.chatty'

  caveats do
    depends_on_java('7+')
  end
end
