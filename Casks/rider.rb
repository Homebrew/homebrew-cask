cask 'rider' do
  # Rider is EAP only for now
  version '1.0,171.4456.575'
  sha256 '897739427997cdbd1b82fbda4847502ce8106f098c84c1f26e8e76fdf237c15c'

  url "https://download.jetbrains.com/resharper/riderRS-#{version.after_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=RD&latest=true&type=eap',
          checkpoint: '2b94acbaf6994d2389f98b49725eb08c43ca065c78917a482eb7ad4024f710ce'
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
