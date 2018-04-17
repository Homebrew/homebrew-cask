cask 'dropzone' do
  version '3.6.6'
  sha256 '2111a895d444e110890d5f4096bf0a58f257a267bdb9d2b9362313a79c6b3bc4'

  url "https://aptonic.com/dropzone3/sparkle/Dropzone-#{version}.zip"
  appcast 'https://aptonic.com/sparkle/updates.xml',
          checkpoint: '841ef8b654a5a210dcbae7286b7264735c0e567881d1daf091ee02555ebbbe63'
  name 'Dropzone'
  homepage 'https://aptonic.com/'

  app "Dropzone #{version.major}.app"

  zap trash: [
               "~/Library/Application Scripts/com.aptonic.Dropzone#{version.major}",
               '~/Library/Application Scripts/com.aptonic.LaunchAtLogin',
               "~/Library/Application Support/Dropzone #{version.major}",
               "~/Library/Caches/com.aptonic.Dropzone#{version.major}",
               "~/Library/Containers/com.aptonic.Dropzone#{version.major}",
               '~/Library/Containers/com.aptonic.LaunchAtLogin',
               "~/Library/Preferences/com.aptonic.Dropzone#{version.major}.plist",
               "~/Library/Saved Application State/com.aptonic.Dropzone#{version.major}.savedState",
             ]
end
