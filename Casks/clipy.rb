cask 'clipy' do
  version '1.0.9'
  sha256 '088e3f221ae3445913e81bed4ac9cc05dd15274463604e382583cbd4f9b787b2'

  url "https://github.com/Clipy/Clipy/releases/download/#{version}/Clipy_#{version}.dmg"
  appcast 'https://clipy-app.com/appcast.xml',
          checkpoint: '1c0febceb417ff7abcb857febad0947c665d63c69e65eda24bd035ed7a14b7b7'
  name 'Clipy'
  homepage 'https://clipy-app.com/'
  license :mit

  depends_on macos: '>= :mavericks'

  app 'Clipy.app'
end
