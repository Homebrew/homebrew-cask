cask :v1 => 'glimmerblocker' do
  version '1.5.3'
  sha256 '872f3edc5f6dc3b92ba17eaf00236308e561bf353ffb1579cc5d7afc27bbf0a5'

  url "http://glimmerblocker.org/downloads/GlimmerBlocker-#{version}.dmg"
  name 'GlimmerBlocker'
  homepage 'http://glimmerblocker.org'
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
