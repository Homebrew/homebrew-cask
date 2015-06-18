cask :v1 => 'eloquent' do
  version '2.4.8'
  sha256 '3116ce1e74a6305ad60bb60ba010ccd864f3dce71eaa1a64fee2791651119857'

  url "https://launchpad.net/eloquent/trunk/#{version}/+download/Eloquent-#{version}.app.zip"
  name 'Eloquent'
  appcast 'http://www.eloquent-bible-study.eu/Eloquent_L2_Appcast.xml',
          :sha256 => 'be88bece134fd7184f5c2a5bf68cf1c58093aa16bd9d33f18c6397e37da2f66f'
  homepage 'https://launchpad.net/eloquent'
  license :gratis

  app 'Eloquent.app'

  zap :delete => [
                  '~/Library/Application Support/Eloquent',
                  '~/Library/Caches/org.crosswire.Eloquent',
                  '~/Library/Logs/Eloquent.log',
                 ]
end
