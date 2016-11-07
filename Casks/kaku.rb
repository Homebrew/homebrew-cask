cask 'kaku' do
  version '1.8.0'
  sha256 '2843de576b2e7d2647eddea53f1ca6ed0e5c1b9293f7aec0829bc400fdd81f08'

  # github.com/EragonJ/Kaku was verified as official when first introduced to the cask
  url "https://github.com/EragonJ/Kaku/releases/download/#{version}/Kaku-#{version}.dmg"
  appcast 'https://github.com/EragonJ/Kaku/releases.atom',
          checkpoint: 'ba0caf830db975e86fb14a85a2400fa91de98666c12dcef59afacb4cbd5533aa'
  name 'Kaku'
  homepage 'http://kaku.rocks'

  app 'Kaku.app'
end
