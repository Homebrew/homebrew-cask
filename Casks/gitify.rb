cask :v1 => 'gitify' do
  version '0.0.18'
  sha256 '5916a5054f5ed70660e3118bd43ec72d3f592337d091b2883a203bb4ab5173e6'

  url "https://github.com/ekonstantinidis/gitify/releases/download/#{version}/gitify-osx.zip"
  appcast 'https://github.com/ekonstantinidis/gitify/releases.atom'
  name 'Gitify'
  homepage 'https://github.com/ekonstantinidis/gitify'
  license :oss

  app 'Gitify.app'
end
