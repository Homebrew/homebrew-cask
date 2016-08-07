cask 'nozbe' do
  version '3.0.0'
  sha256 'dbe342d1131468eafd0a785c621bb1760c776fe39af269e1819dd5e2410bc8e2'

  url "https://files.nozbe.com/#{version.no_dots}/Nozbe.app.zip"
  name 'Nozbe'
  homepage 'https://nozbe.com'
  license :freemium

  app 'Nozbe.app'
end
