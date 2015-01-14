cask :v1 => 'firefox' do
  version :latest
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=en-US'
  name 'Firefox'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/en-US/firefox/'
  license :oss
  tags :vendor => 'Firefox'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
