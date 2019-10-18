cask 'sunsama' do
  version '0.9.7'
  sha256 '71c501bfb8eb1557c8b4f620082f3e844aa95f47c2f406d1615a9619fd77573f'

  url "http://download.sunsama.com/desktop/Sunsama-#{version}.dmg"
  appcast 'https://app.sunsama.com/b56d1fbd218098348674bde87159e7c18804471c.js'
  name 'Sunsama'
  homepage 'https://app.sunsama.com/desktop'

  app 'Sunsama.app'
end
