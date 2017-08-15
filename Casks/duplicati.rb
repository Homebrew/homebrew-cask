cask 'duplicati' do
  version '2.0.2.1,2017-08-01'
  sha256 '2f1f8ada0a8e09db6d967adcb76ce976d41d53318fdbba3bbdd279ca849e8e27'

  url "https://updates.duplicati.com/beta/duplicati-#{version.before_comma}_beta_#{version.after_comma}.dmg"
  appcast 'https://github.com/duplicati/duplicati/releases.atom',
          checkpoint: 'a62964fa18b2896ce5de9ac6c7a2012457c1bfb4b36d9cf2ae4f336aca5e65fd'
  name 'Duplicati'
  homepage 'https://www.duplicati.com/'

  app 'Duplicati.app'
end
