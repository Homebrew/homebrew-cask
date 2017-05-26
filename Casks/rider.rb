cask 'rider' do
  # Rider is EAP only for now
  version '1.0,171.4456.199'
  sha256 'dc995c3d9483c1b033a2de38fa81982e125ebafe478559f23f058989d90092dd'

  url "https://download.jetbrains.com/resharper/riderRS-#{version.after_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=RD&latest=true&type=eap',
          checkpoint: 'ec073388a9c68061536e457a508d421dfc93a663656d11b6eeebb6677641c85a'
  name 'Jetbrains Rider'
  homepage 'https://www.jetbrains.com/rider/'

  auto_updates true

  app 'Rider EAP.app'

  uninstall delete: ENV['PATH'].split(File::PATH_SEPARATOR).map { |p| "#{p}/rider" }.select { |f| File.exist?(f) }

  zap delete: [
                "~/Library/Caches/Rider#{version.major_minor.no_dots}",
                "~/Library/Logs/Rider#{version.major_minor.no_dots}",
                "~/Library/Application Support/Rider#{version.major_minor.no_dots}",
                "~/Library/Preferences/Rider#{version.major_minor.no_dots}",
                '~/Library/Preferences/com.jetbrains.rider-EAP.plist',
                '~/Library/Saved Application State/com.jetbrains.rider-EAP.savedState',
              ]
end
