cask 'rider' do
  # Rider is EAP only for now
  version '1.0,171.4456.902'
  sha256 '763b6960d44e3a8b5d8432a10ce6f5037d7278f4f5e04c82da2b2abf202be685'

  url "https://download.jetbrains.com/resharper/riderRS-#{version.after_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=RD&latest=true&type=eap',
          checkpoint: 'b2b303009e0f6d8296b54e32187133c3d9351fb10e5ad163fb26e1b9536ebc3f'
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
