cask 'emojipedia' do
  version '20170424'
  sha256 '45be0d803256c123f9716937dea3b3d2556b72dda50b0b645fa4e0939517fa6d'

  url "https://github.com/gingerbeardman/Emojipedia/releases/download/#{version}/Emojipedia.dictionary.zip"
  appcast 'https://github.com/gingerbeardman/Emojipedia/releases.atom'
  name 'Emojipedia'
  homepage 'https://github.com/gingerbeardman/Emojipedia'

  dictionary 'Emojipedia.dictionary'
end
