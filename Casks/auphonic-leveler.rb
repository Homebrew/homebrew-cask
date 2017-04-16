cask :v1 => 'auphonic-leveler' do
  version '1.3'
  sha256 '9225f06a5a33ca9416c3211e7cc8b0900c4d6b5a0cda74c8c13d20f94c18edec'
  
  url "https://auphonic.com/licensing/download/leveler_gui/1/mac"
  name 'Auphonic Leveler'
  homepage 'https://auphonic.com/leveler'
  license :commercial

  app 'Auphonic Leveler.app'
end
