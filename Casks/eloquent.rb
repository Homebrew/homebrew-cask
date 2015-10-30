cask :v1 => 'eloquent' do
  version '2.4.9'
  sha256 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'

  url "https://launchpad.net/eloquent/trunk/#{version}/+download/Eloquent-#{version}.app.zip"
  name 'Eloquent'
  appcast 'http://www.eloquent-bible-study.eu/Eloquent_L2_Appcast.xml',
          :sha256 => '1a144c7e6decfb2e5fb9b777d6481835422eae43eed8700c3e4a9dbe76b3eeb6'
  homepage 'https://launchpad.net/eloquent'
  license :gratis

  app 'Eloquent.app'

  zap :delete => [
                  '~/Library/Application Support/Eloquent',
                  '~/Library/Caches/org.crosswire.Eloquent',
                  '~/Library/Logs/Eloquent.log',
                 ]
end
