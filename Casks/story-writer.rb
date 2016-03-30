cask 'story-writer' do
  version '1.3.1'

  if Hardware::CPU.is_32_bit?
    sha256 '8e109e3f6e66dd380fcb2f1d68dda592dc12a36ca9c72b7f477057f6bff8c844'
    url "http://soft.xiaoshujiang.com/version/Story-writer-v#{version}/Story-writer-osx32.zip"
  else
    sha256 'cf3203587775e6260513511b4a9bc91e39d0699ccc59eff3734320aaa54c3bef'
    url "http://soft.xiaoshujiang.com/version/Story-writer-v#{version}/Story-writer-osx64.zip"
  end

  name 'Story Writer'
  homepage 'http://soft.xiaoshujiang.com'
  license :gratis

  app 'Story-writer.app'
end
