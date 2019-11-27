cask 'finicky' do
  version '2.2.3'
  sha256 '156ec52de64e6ab80b53cfe924a3993e606795d29f5b0998982f627b77f4c2b2'

  url "https://github.com/johnste/finicky/releases/download/v#{version}/Finicky.zip"
  appcast 'https://github.com/johnste/finicky/releases.atom'
  name 'Finicky'
  homepage 'https://github.com/johnste/finicky'

  depends_on macos: '>= :sierra'

  app 'Finicky.app'
end
