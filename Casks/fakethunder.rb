cask 'fakethunder' do
  version '2.0.16'
  sha256 '42ce5c0f836a17b18591816359a5a4656a7910ae3a80f83e1d1422dd995fde00'

  url "http://dl.martianz.cn/fakethunder/fakeThunder#{version.major}#{version.patch}.zip"
  appcast 'https://martianz.cn/fakethunder/',
          checkpoint: 'cf627b0fd5ac2edc0d005e832ac525343d736a018680fd292ccf782bcb3b8e50'
  name 'fakeThunder'
  homepage 'https://martianz.cn/fakethunder/'

  app 'fakeThunder.app'
end
