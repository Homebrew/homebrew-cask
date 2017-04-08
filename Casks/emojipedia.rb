cask 'emojipedia' do
  version '20170406'
  sha256 'f2a9f4e44853527478a855e6f394c4405f6d236157947c98c7495a3c4d2be25f'

  url "https://github.com/gingerbeardman/Emojipedia/releases/download/#{version}/Emojipedia.dictionary.zip"
  appcast 'https://github.com/gingerbeardman/Emojipedia/releases.atom',
          checkpoint: 'f3f8352135bb5e1bc4dff82c4494ea03926775bb736f57a00951510429ed196f'
  name 'Emojipedia'
  homepage 'https://github.com/gingerbeardman/Emojipedia'

  dictionary 'Emojipedia.dictionary'
end
