cask 'duplicati' do
  version '2.0.3.3,2018-04-02'
  sha256 '427a5ad9fe96ae63b85473b704f379c8d1ba064cfea619475e24cfe2d5ddf238'

  url "https://updates.duplicati.com/beta/duplicati-#{version.before_comma}_beta_#{version.after_comma}.dmg"
  appcast 'https://github.com/duplicati/duplicati/releases.atom',
          checkpoint: '79b6bfbbc5faa210ce64de73388c8a458b2638450d966da5aef300178539106d'
  name 'Duplicati'
  homepage 'https://www.duplicati.com/'

  app 'Duplicati.app'

  zap trash: [
               '~/Library/Application Support/Duplicati',
               '~/.config/Duplicati',
             ]
end
