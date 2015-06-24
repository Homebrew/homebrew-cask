cask :v1 => 'gitify' do
  version '0.0.13'
  sha256 '40dbf651aa077f74a55c5d2ca46d22886c000c3354bded44d5d1156f23d33445'

  url "https://github.com/ekonstantinidis/gitify/releases/download/#{version}/gitify-osx.zip"
  appcast 'https://github.com/ekonstantinidis/gitify/releases.atom'
  name 'Gitify'
  homepage 'https://github.com/ekonstantinidis/gitify'
  license :oss

  app 'Gitify.app'
end
