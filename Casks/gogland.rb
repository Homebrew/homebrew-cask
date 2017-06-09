cask 'gogland' do
  # Gogland is EAP only for now
  version '1.0 EAP,171.4694.35'
  sha256 '2a0a4829f80e52f5226e90c5a6257518dcaa4661eca0222258cab57cfdf050a6'

  url "https://download.jetbrains.com/go/gogland-#{version.after_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=GO&latest=true&type=eap',
          checkpoint: 'b445a51f9968e5b25fce6bb9bf3031ebaa1b6dce9f89ad84c62bc646479718fb'
  name 'Gogland'
  name 'Gogland EAP'
  homepage 'https://www.jetbrains.com/go/'

  auto_updates true

  app "Gogland #{version.before_comma}.app"

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'Gogland') }.each { |path| File.delete(path) if File.exist?(path) }
  end

  zap delete: [
                "~/Library/Preferences/Gogland#{version.major_minor}",
                "~/Library/Application Support/Gogland#{version.major_minor}",
                "~/Library/Caches/Gogland#{version.major_minor}",
                "~/Library/Logs/Gogland#{version.major_minor}",
              ]
end
