cask 'polycode' do
  version '0.8.4'
  sha256 '9dfc56255fde79684376d5955142578f0ff7e36d1b59e97f58e243e27c24d698'

  url "http://polycode.org/download/content/PolycodeDarwin_#{version}.zip"
  name 'Polycode'
  homepage 'http://polycode.org/'
  license :mit

  depends_on macos: '>= :lion'
  depends_on arch: :x86_64

  app 'Darwin/Polycode.app'
end
