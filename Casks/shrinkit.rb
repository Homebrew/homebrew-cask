cask 'shrinkit' do
  version '1.3.2'
  sha256 'c076168a05d8a664cfac9bdee2f7a5f7cb317ade7d9f00c2cd0d49b33294a943'

  url "https://download.panic.com/shrinkit/ShrinkIt%20#{version}.zip"
  name 'ShrinkIt'
  homepage 'https://www.panic.com/blog/shrinkit-1-2/'

  app 'ShrinkIt.app'
end
