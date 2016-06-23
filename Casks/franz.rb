cask 'franz' do
  version '3.0.1'
  sha256 'fa180cc619c8acf1f310ffd745f3e59b28996246e325b98aaa6df0d5a16073b6'

  url "https://github.com/imprecision/franz-app/releases/download/#{version}/Franz-darwin-x64-#{version}.dmg"
  appcast 'https://github.com/imprecision/franz-app/releases.atom',
          checkpoint: '09124d93ed745de7f4fc730b54f383f020d79d9c3546d19d7f00381736e02998'
  name 'Franz'
  homepage 'http://meetfranz.com'
  license :gratis

  app 'Franz.app'
end
