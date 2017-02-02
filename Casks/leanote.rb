cask 'leanote' do
  version '2.3'
  sha256 '662ad91b907f02f8468ae5f0f5934e7709648c16882d47caed4ec0e5add5fec4'

  # sourceforge.net/leanote-desktop-app was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/leanote-desktop-app/#{version}/leanote-desktop-mac-v#{version}.zip"
  appcast 'https://sourceforge.net/projects/leanote-desktop-app/rss?path=/',
          checkpoint: '9db6ec14d8374530d513084143f7b4bf189bbe8a029afdcd7d949261b8ad52c8'
  name 'Leanote'
  homepage 'http://leanote.org/'

  app 'Leanote.app'
end
