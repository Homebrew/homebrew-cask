cask 'emojipedia' do
  version '20160717'
  sha256 '00e67cbc89ccd6d9ec44920dcc6708a8acbd61c550a49437918047312c55271f'

  url "https://github.com/gingerbeardman/Emojipedia/releases/download/#{version}/Emojipedia.dictionary.zip"
  appcast 'https://github.com/gingerbeardman/Emojipedia/releases.atom',
          checkpoint: 'f4015e1b46d51a7e33926f697e5f697282c243e3331d1b8134213d527d3700ad'
  name 'Emojipedia'
  homepage 'https://github.com/gingerbeardman/Emojipedia'
  license :mit

  artifact 'Emojipedia.dictionary', target: "#{ENV['HOME']}/Library/Dictionaries/Emojipedia.dictionary"

  caveats <<-EOS.undent
    Open macOS Dictionary app (in Applications folder)
    Enable "#{token}" in preferences to activate.
  EOS
end
