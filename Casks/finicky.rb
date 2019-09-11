cask 'finicky' do
  version '2.2.1'
  sha256 'fcc1b9fdd1aee42613d1aef1432809bd6dea806e1f2d2074d26b0ed39e21f9c6'

  url "https://github.com/johnste/finicky/releases/download/v#{version}/Finicky.zip"
  appcast 'https://github.com/johnste/finicky/releases.atom'
  name 'Finicky'
  homepage 'https://github.com/johnste/finicky'

  depends_on macos: '>= :sierra'

  app 'Finicky.app'
end
