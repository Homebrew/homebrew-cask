cask 'dropzone' do
  version '3.7.0'
  sha256 '31f7c31621a95fa2a024c3b476d0d38fce9f24287180c18609b902985b07b980'

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
