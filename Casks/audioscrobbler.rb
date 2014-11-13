cask :v1 => 'audioscrobbler' do
  version '0.9.14'
  sha256 'e7b37abcdb01f0e888a7135395b9369ed47edb37ab669f778dc96d674e83ed1c'

  url "https://github.com/mxcl/Audioscrobbler.app/releases/download/#{version}/Audioscrobbler-#{version}.zip"
  homepage 'https://github.com/mxcl/Audioscrobbler.app'
  license :oss

  app 'Audioscrobbler.app'
end
