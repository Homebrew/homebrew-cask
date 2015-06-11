cask :v1 => 'gitify' do
  version '0.0.12'
  sha256 'e059a35db36975d5e6c20bee030d72f60d95a7d026751213a0d28a6ca1aaf1b9'

  url "https://github.com/ekonstantinidis/gitify/releases/download/#{version}/gitify-osx.zip"
  appcast 'https://github.com/ekonstantinidis/gitify/releases.atom'
  name 'Gitify'
  homepage 'https://github.com/ekonstantinidis/gitify'
  license :oss

  app 'Gitify.app'
end
