cask :v1 => 'gitify' do
  version '0.0.15'
  sha256 '4a21d4a05b35f7e9bbaff3f3c42de4a351924801c9b9bafeb30ca243da9d679d'

  url "https://github.com/ekonstantinidis/gitify/releases/download/#{version}/gitify-osx.zip"
  appcast 'https://github.com/ekonstantinidis/gitify/releases.atom'
  name 'Gitify'
  homepage 'https://github.com/ekonstantinidis/gitify'
  license :oss

  app 'Gitify.app'
end
