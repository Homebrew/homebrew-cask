cask 'eintopf' do
  version '1.3.0'
  sha256 '21af45808e774a20d6f7c71066ba5521de2c7f6842ff805aa384887d39b0df47'

  # github.com/mazehall/eintopf was verified as official when first introduced to the cask
  url "https://github.com/mazehall/eintopf/releases/download/#{version}/eintopf_#{version}-x64.dmg"
  appcast 'https://github.com/mazehall/eintopf/releases.atom',
          checkpoint: '08fb7a2f75150cf295efe239a3104ed297c68b57838207087b0f84357899fe14'
  name 'Eintopf'
  homepage 'https://eintopf.io'
  license :mit

  app 'Eintopf.app'
end
