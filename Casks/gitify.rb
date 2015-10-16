cask :v1 => 'gitify' do
  version '0.0.17'
  sha256 'a8cd21365b057d7fe1ec943e34f79db0b837af86cf69646f445ba08ce62ea20c'

  url "https://github.com/ekonstantinidis/gitify/releases/download/#{version}/gitify-osx.zip"
  appcast 'https://github.com/ekonstantinidis/gitify/releases.atom'
  name 'Gitify'
  homepage 'https://github.com/ekonstantinidis/gitify'
  license :oss

  app 'Gitify.app'
end
