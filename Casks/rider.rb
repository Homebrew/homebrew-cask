cask 'rider' do
  version '2017.1,171.4456.2169'
  sha256 '9867f139c98b8ccaadfeb063b1919c8035d72d1021e0108369ef44df43cd765f'

  url "https://download.jetbrains.com/resharper/JetBrains.Rider-#{version.major_minor}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=RD&latest=true&type=release',
          checkpoint: 'be17267b11d726d6879f7c47e579543565dc613167e3564b4935eed2c08caae8'
  name 'Jetbrains Rider'
  homepage 'https://www.jetbrains.com/rider/'

  auto_updates true

  app "Rider #{version.major_minor}.app"

  uninstall delete: ENV['PATH'].split(File::PATH_SEPARATOR).map { |p| "#{p}/rider" }.select { |f| File.exist?(f) }

  zap delete: [
                "~/Library/Caches/Rider#{version.major_minor}",
                "~/Library/Logs/Rider#{version.major_minor}",
                "~/Library/Application Support/Rider#{version.major_minor}",
                "~/Library/Preferences/Rider#{version.major_minor}",
                '~/Library/Preferences/jetbrains.rider.71e559ef.plist',
                '~/Library/Saved Application State/com.jetbrains.rider.savedState',
              ]
end
