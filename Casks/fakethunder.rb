cask 'fakethunder' do
  version '2.0.16'
  sha256 '42ce5c0f836a17b18591816359a5a4656a7910ae3a80f83e1d1422dd995fde00'

  url "http://dl.martianz.cn/fakethunder/fakeThunder#{version.major}#{version.patch}.zip"
  name 'fakeThunder'
  homepage 'https://martianz.cn/fakethunder/'

  app 'fakeThunder.app'
end
