cask 'dropzone' do
  version '3.6.8'
  sha256 '15188b5adf399ef84b4952fc11f7a43f7e01987aa0dd2a9c0781af4e99888324'

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
