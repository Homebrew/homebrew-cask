cask 'copyq' do
  version '3.0.2'
  sha256 'e7769a6eb9f5c078810f2874a2fa6033ad0108baa5c43a2d81ce0eec62e9dfa7'

  # github.com/hluk/CopyQ was verified as official when first introduced to the cask
  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ.dmg"
  appcast 'https://github.com/hluk/CopyQ/releases.atom',
          checkpoint: '4d5aa488e9fef7dd477eca8c7756c03e4eb81eb0a3988b89345fbd6295e3f7f9'
  name 'CopyQ'
  homepage 'https://hluk.github.io/CopyQ/'

  app 'CopyQ.app'
  binary "#{appdir}/CopyQ.app/Contents/MacOS/copyq"
end
