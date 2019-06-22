cask 'finicky' do
  version '2.1.0'
  sha256 '7ae5b94b95170f5e425d2b1da0f6f3c0349ce7e67a4dbd2e15ba8885c471cef2'

  url "https://github.com/johnste/finicky/releases/download/v#{version}/Finicky.zip"
  appcast 'https://github.com/johnste/finicky/releases.atom'
  name 'Finicky'
  homepage 'https://github.com/johnste/finicky'

  depends_on macos: '>= :sierra'

  app 'Finicky.app'
end
