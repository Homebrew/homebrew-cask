cask 'kakapo' do
  version '1.2.0'
  sha256 '68fa13cfea3a78784ea1aa0f38f13a7d6cfea306735a39a8349ef1bd50120f93'

  url "https://github.com/bluedaniel/Kakapo-app/releases/download/v#{version}/Kakapo-#{version}-Mac.zip"
  appcast 'https://github.com/bluedaniel/Kakapo-app/releases.atom',
          checkpoint: '8558f7962f8e87a02aada6b70743b26ae01403506eacce7613324915dd6dd497'
  name 'Kakapo'
  homepage 'http://www.kakapo.co/app.html'
  license :isc

  app 'Kakapo.app'
end
