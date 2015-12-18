cask 'mockplus' do
  version '2.0.9.10'
  sha256 'a0297e6120d1cec13b6947a4926a192b0adee89c25323c4fdcbfb1a2e2b5f638'

  url "http://cdn.mockplus.cn/software/osx/Mockplus_v#{version}.dmg"
  name 'Mockplus'
  name '摩客'
  homepage 'https://www.mockplus.cn/'
  license :freemium

  app 'Mockplus.app'
end
