cask :v1 => 'eloquent' do
  version '2.4.8'
  sha256 '3116ce1e74a6305ad60bb60ba010ccd864f3dce71eaa1a64fee2791651119857'

  url "https://launchpad.net/eloquent/trunk/#{version}/+download/Eloquent-#{version}.app.zip"
  homepage 'https://launchpad.net/eloquent'
  license :unknown    # todo: improve this machine-generated value

  app 'Eloquent.app'

  zap :delete => [
                  '~/Library/Application Support/Eloquent',
                  '~/Library/Caches/org.crosswire.Eloquent',
                  '~/Library/Logs/Eloquent.log',
                 ]
end
