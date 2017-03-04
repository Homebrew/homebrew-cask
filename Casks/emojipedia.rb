cask 'emojipedia' do
  version '20160808'
  sha256 '381f34be78a050d88e4656e3864252a3e55b3f8c43c61ec6fa230142991300b4'

  url "https://github.com/gingerbeardman/Emojipedia/releases/download/#{version}/Emojipedia.dictionary.zip"
  appcast 'https://github.com/gingerbeardman/Emojipedia/releases.atom',
          checkpoint: '139054548a85ff087d11dd4002ff8f5e6f5bdcad320a9ffde710ef7d995019b0'
  name 'Emojipedia'
  homepage 'https://github.com/gingerbeardman/Emojipedia'

  dictionary 'Emojipedia.dictionary'
end
