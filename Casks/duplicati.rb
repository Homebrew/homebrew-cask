cask 'duplicati' do
  version '2.0.2.1,2017-08-01'
  sha256 '2f1f8ada0a8e09db6d967adcb76ce976d41d53318fdbba3bbdd279ca849e8e27'

  url "https://updates.duplicati.com/beta/duplicati-#{version.before_comma}_beta_#{version.after_comma}.dmg"
  appcast 'https://github.com/duplicati/duplicati/releases.atom',
          checkpoint: '1d9839044f40dd3ee88a76d1074c8c34b7162a0960512932deeaa1e2d94fe9ee'
  name 'Duplicati'
  homepage 'https://www.duplicati.com/'

  app 'Duplicati.app'

  zap trash: [
               '~/Library/Application Support/Duplicati',
               '~/.config/Duplicati',
             ]
end
