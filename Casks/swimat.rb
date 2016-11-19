cask 'swimat' do
  version '1.0'
  sha256 '6e41f4812d3914372ac360f0fa132615f74e684bf7ce0e86846cfd96679c2310'

  url "https://github.com/Jintin/Swimat/releases/download/v#{version}/Swimat.zip"
  appcast 'https://github.com/Jintin/Swimat/releases.atom',
          checkpoint: 'b8aae3ee93a663ae52007d5e68b4ad011abef7b0529c283833d6dcb59f8e84bc'
  name 'Swimat'
  homepage 'https://github.com/Jintin/Swimat'

  app 'Swimat.app'
end
