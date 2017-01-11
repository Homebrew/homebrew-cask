cask 'polycode' do
  version '0.8.4'
  sha256 '9dfc56255fde79684376d5955142578f0ff7e36d1b59e97f58e243e27c24d698'

  url "http://polycode.org/download/content/PolycodeDarwin_#{version}.zip"
  appcast 'https://github.com/ivansafrin/Polycode/releases.atom',
          checkpoint: 'ad94328789b83f9fe37a6ff30f7ffa0b295a179511b9ca5e8651120152a00c68'
  name 'Polycode'
  homepage 'http://polycode.org/'

  depends_on macos: '>= :lion'

  app 'Darwin/Polycode.app'
end
