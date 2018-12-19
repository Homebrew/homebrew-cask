cask 'dropzone' do
  version '3.6.9'
  sha256 '6c1a12e590a181eed17571bbb9169f6718793435c76eeed17acd9a8081cd36eb'

  url "https://aptonic.com/dropzone3/sparkle/Dropzone-#{version}.zip"
  appcast 'https://aptonic.com/sparkle/updates.xml'
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
