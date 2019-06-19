cask 'finicky' do
  version '2.0'
  sha256 'fb6726ac69d3010489f5708b1e5f73c258ef0ba9f5a6acafdc886bdd8c32b2aa'

  url "https://github.com/johnste/finicky/releases/download/v#{version}/Finicky.zip"
  appcast 'https://github.com/johnste/finicky/releases.atom'
  name 'Finicky'
  homepage 'https://github.com/johnste/finicky'

  depends_on macos: '>= :sierra'

  app 'Finicky.app'
end
