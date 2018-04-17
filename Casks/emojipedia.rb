cask 'emojipedia' do
  version '20170424'
  sha256 '45be0d803256c123f9716937dea3b3d2556b72dda50b0b645fa4e0939517fa6d'

  url "https://github.com/gingerbeardman/Emojipedia/releases/download/#{version}/Emojipedia.dictionary.zip"
  appcast 'https://github.com/gingerbeardman/Emojipedia/releases.atom',
          checkpoint: 'a90ad6f8f6294d096ae9af0d33556dfc055cf5675bbbcf42d9890ecf40c04df1'
  name 'Emojipedia'
  homepage 'https://github.com/gingerbeardman/Emojipedia'

  dictionary 'Emojipedia.dictionary'
end
