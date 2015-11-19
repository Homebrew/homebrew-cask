cask :v1 => 'glimmerblocker' do
  version '1.6.6'
  sha256 'd207aa133986b8f82687fd80eda82ff6c03f71c9231294286a04df1a05b5deb0'

  url "https://glimmerblocker.org/downloads/GlimmerBlocker-#{version}.dmg"
  appcast 'https://glimmerblocker.org/site/rss/sparkle-final.xml',
          :sha256 => '1a3b44ba7a5773b265a6a14fcd4c07f993aada41ae7ade0a931ac49787b0a1de'
  name 'GlimmerBlocker'
  homepage 'https://glimmerblocker.org/'
  license :gpl

  pkg 'GlimmerBlocker.pkg'

  uninstall :pkgutil   => 'org.glimmerblocker.pkg',
            :launchctl => [
                           'org.glimmerblocker.proxy',
                           'org.glimmerblocker.updater'
                          ],
            :delete    => '/Library/PreferencePanes/GlimmerBlocker.prefPane'

  zap       :delete    => [
                           '/Library/GlimmerBlocker',
                           '/Library/Logs/GlimmerBlocker'
                          ]

  caveats <<-EOS.undent
    You must deactivate GlimmerBlocker from the installed preference
    pane before uninstalling. See http://glimmerblocker.org/wiki/Uninstall.
  EOS
end
