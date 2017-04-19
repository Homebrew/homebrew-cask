cask 'appcode' do
  version '2017.1.1,171.4073.48'
  sha256 'ae8cbf21bb8215b57f06fa482aa21388fb7d26329f3afd5ce2be2aa15d6e2fcd'

  url "https://download.jetbrains.com/objc/AppCode-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=AC&latest=true&type=release',
          checkpoint: '79cab5f8d9871bd462c1a9511b874055f386a8adc111edacc9ed94fc1932edf3'
  name 'AppCode'
  homepage 'https://www.jetbrains.com/objc/'

  auto_updates true
  conflicts_with cask: 'appcode-eap'

  app 'AppCode.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'appcode') }.each { |path| File.delete(path) if File.exist?(path) }
  end

  zap delete: [
                "~/Library/Preferences/AppCode#{version.major_minor}",
                "~/Library/Application Support/AppCode#{version.major_minor}",
                "~/Library/Caches/AppCode#{version.major_minor}",
                "~/Library/Logs/AppCode#{version.major_minor}",
              ]
end
