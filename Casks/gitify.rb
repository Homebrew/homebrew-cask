cask :v1 => 'gitify' do
  version '0.0.10'
  sha256 'c948f4fb7a2b2073964f0abd395701f0e2debd7bf85a8b19a89494da90587a47'

  url "https://github.com/ekonstantinidis/gitify/releases/download/#{version}/gitify-osx.zip"
  appcast 'https://github.com/ekonstantinidis/gitify/releases.atom'
  name 'Gitify'
  homepage 'https://github.com/ekonstantinidis/gitify'
  license :oss

  app 'Gitify.app'
end
