cask :v1 => 'gitify' do
  version '0.014'
  sha256 '0a7fc4df27f690b7aaf88b19f2c8b117430d86368a6864942c0a61c3d3db8fb5'

  url "https://github.com/ekonstantinidis/gitify/releases/download/#{version}/gitify-osx.zip"
  appcast 'https://github.com/ekonstantinidis/gitify/releases.atom'
  name 'Gitify'
  homepage 'https://github.com/ekonstantinidis/gitify'
  license :oss

  app 'Gitify.app'
end
