cask :v1 => 'dendroscope' do
  version '3.3.2'
  sha256 '21eccfc97aba6400ecb9d81f1bc02a1f8fc9c4cd07e6c09b5f310d414b00c7e2'

  url "http://ab.inf.uni-tuebingen.de/data/software/dendroscope3/download/Dendroscope_macos_#{version.gsub('.','_')}.dmg"
  name 'Dendroscope'
  homepage 'http://dendroscope.org/'
  license :gpl

  installer :manual => 'Dendroscope Installer.app'
end
