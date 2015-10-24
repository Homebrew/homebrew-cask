cask :v1 => 'sonarr-menu' do
  version 'v3.1'
  sha256 'fb9e43972321b5e486adfec1bb4d58a377ddccf1b5e1fa651aa964e118ec1889'

  url "https://github.com/jefbarn/Sonarr-Menu/releases/download/#{version}/Sonarr-Menu.#{version}.zip"
  appcast 'https://github.com/jefbarn/Sonarr-Menu/releases.atom'
  name 'Sonarr Menu'
  homepage 'https://github.com/jefbarn/Sonarr-Menu'
  license :gpl

  app 'Sonarr-Menu.app'

  depends_on :cask => 'sonarr'
  depends_on :macos => '>= 10.9'

  postflight do
    # Hook the menu app into Sonarr's startup script
    sonarr_path = "#{caskroom_path}/../sonarr/latest/Sonarr.app/Contents/MacOS/Sonarr"
    hook = "open -a #{staged_path}/Sonarr-Menu.app"

    # Remove old hook
    file = File.read(sonarr_path)
    file = file.gsub(/^.*Sonarr-Menu.*$\r?\n/, '')

    # Add new hook
    file = file.sub(/MONO_EXEC=/, "#{hook}\n\\0")
    File.write(sonarr_path, file)
  end

  zap :delete => '~/Library/LaunchAgents/SonarrAgent.plist'
end
