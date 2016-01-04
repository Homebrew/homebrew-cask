cask 'qtpass' do
  version '1.0.6'
  sha256 'f024f277fce4a069a49f60b03c85e45e84a49faad145538bd468c606e3468939'

  url "https://github.com/IJHack/qtpass/releases/download/v#{version}/qtpass-#{version}.dmg"
  appcast 'https://github.com/IJHack/qtpass/releases.atom',
          :sha256 => '45611201958e1504409a00156dd0c2339f8330fd24630df9c0105caaad022b61'
  name 'QtPass'
  homepage 'https://qtpass.org/'
  license :gpl

  app 'QtPass.app'
end
