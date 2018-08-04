cask 'flavours' do
  version '224,23:07351795f8d0f89244aeb9bfec2b2d0a6e6c20e0'
  sha256 '043973bd36f7767d2fc044d393bbb1a40a8bf5ee981881f69e3f6c5e4aa40f9a'

  # rink.hockeyapp.net/api/2/apps/251163d75d6ed8f4f639239fb7e5a545 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/251163d75d6ed8f4f639239fb7e5a545/app_versions/#{version.after_comma.before_colon}?format=zip&avtoken=#{version.after_colon}"
  appcast 'https://rink.hockeyapp.net/api/2/apps/251163d75d6ed8f4f639239fb7e5a545'
  name 'Flavours'
  homepage 'http://flavours.interacto.net/'

  app 'Flavours2.app'

  uninstall launchctl: 'net.interacto.flavours.helper',
            quit:      'net.interacto.Flavours',
            delete:    [
                         '/usr/local/bin/flavours.agent',
                         '/usr/local/bin/flavours.ignitor',
                         '/usr/local/bin/restoreui',
                         '/usr/local/lib/libflavours.dylib',
                         '/usr/local/lib/libflavoursui.dylib',
                       ]

  caveats do
    files_in_usr_local
  end
end
