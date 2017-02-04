cask 'rubymine' do
  version '2016.3.1'
  sha256 'd7c41c8722da496d19b38b6fa99602bcd40e40d9bc66bd4d377c31b710527731'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=RM&latest=true&type=release',
          checkpoint: '21b1683a2ad48dc3c202dc57e28aa7f9d3c7c80703b8100d1443ca3560a2d26d'
  name 'RubyMine'
  homepage 'https://www.jetbrains.com/ruby/'

  auto_updates true
  conflicts_with cask: 'rubymine-eap'

  app 'RubyMine.app'

  uninstall delete: '/usr/local/bin/mine'

  zap delete: [
                "~/Library/Application Support/RubyMine#{version.major_minor}",
                "~/Library/Preferences/RubyMine#{version.major_minor}",
                "~/Library/Caches/RubyMine#{version.major_minor}",
                "~/Library/Logs/RubyMine#{version.major_minor}",
              ]
end
