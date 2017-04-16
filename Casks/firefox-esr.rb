cask :v1 => 'firefox-esr' do
  version '31.4.0'
  sha256 '20f0cf57c21181946c621b20f2758611a9c59d57ab25d4c991cde3f25dee404d'

  url 'https://download.mozilla.org/?product=firefox-31.4.0esr-SSL&os=osx&lang=en-US'
  name 'Firefox ESR'
  homepage 'https://www.mozilla.org/en-US/firefox/organizations/'
  license :mpl

  app 'Firefox.app'
end
