cask 'swinsian' do
  version '1.12.4'
  sha256 '1627723e09d5d86985b7298f47c3308f7dffda3a030206679faf60d18c195e76'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml',
          checkpoint: 'fdb6d8306051d8460ffd34da544188d75178fc419da74e9a0ca319992871592f'
  name 'Swinsian'
  homepage 'https://swinsian.com'

  app 'Swinsian.app'
end
