cask 'mribeiro-timetracker' do
  version :latest
  sha256 :no_check

  url 'https://github.com/mribeiro/Timetracker/releases/latest/download/Timetracker.zip'
  name 'Timetracker'
  homepage 'https://mribeiro.github.com/Timetracker/'

  app 'Timetracker.app'

  zap trash: [
               '/Users/aribeiro/Library/Application Support/org.aribeiro.Timetracker',
               '/Users/aribeiro/Library/Caches/org.aribeiro.Timetracker',
               '/Users/aribeiro/Library/Preferences/org.aribeiro.Timetracker.plist',
             ]
end
