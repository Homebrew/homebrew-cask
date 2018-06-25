cask 'jaksta-media-recorder' do
  version '2.2.3'
  sha256 '92cb1eeff5360e0d2ac890556f92c1f0ada74c32209eea5e4eaa27ca3204cc7c'

  url "https://www.jaksta.com/services/download/mac/jaksta-media-recorder/#{version}"
  appcast 'https://www.jaksta.com/Services/VersionDirector/jmr-mac'
  name 'Jaksta'
  homepage 'https://www.jaksta.com/products'

  container type: :naked

  pkg 'JMR.pkg'

  # This is a horrible hack to force the file extension.
  # The backend code should be fixed so that this is not needed.
  preflight do
    system_command '/bin/mv', args: ['--', staged_path.join(version.to_s), staged_path.join('JMR.pkg')]
  end

  uninstall pkgutil:   'com.shedworx.Jaksta',
            launchctl: 'com.ProxyConfigDaemon'
end
