cask 'gitify' do
  version '0.0.18'
  sha256 '5916a5054f5ed70660e3118bd43ec72d3f592337d091b2883a203bb4ab5173e6'

  url "https://github.com/ekonstantinidis/gitify/releases/download/#{version}/gitify-osx.zip"
  appcast 'https://github.com/ekonstantinidis/gitify/releases.atom',
          :sha256 => '9b0ecec304e3a04b1ea8a2f7a872a025a3e44b5d7e0e15dc84d8e3d3771ee3b6'
  name 'Gitify'
  homepage 'https://github.com/ekonstantinidis/gitify'
  license :oss

  app 'Gitify.app'
end
