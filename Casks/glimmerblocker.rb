cask :v1 => 'glimmerblocker' do
  version '1.6.5'
  sha256 'bcb9f53c4eb33a907fdaa42b7e5deb5b48d2495269e8746206691b393e2db507'

  url "https://glimmerblocker.org/downloads/GlimmerBlocker-#{version}.dmg"
  appcast 'https://glimmerblocker.org/site/rss/sparkle-final.xml',
          :sha256 => 'fce1b515c7ee075a7ce56f91753ca292eb786cc32180f7d8eed4c521a2aa3a03'
  name 'GlimmerBlocker'
  homepage 'https://glimmerblocker.org/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

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
