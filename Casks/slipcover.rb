cask :v1 => 'slipcover' do
  version '1.1.1'
  sha256 'e94f6da248ca5ab426749500f24acbd8a1cc8ea6c4cae2e8f41b0e891e9f074c'

  url "http://bohemiancoding.s3.amazonaws.com/slipcover.zip"
  name 'SlipCover'
  # vendor page is no longer available
  homepage 'http://web.archive.org/web/20110718111909/http://www.bohemiancoding.com/slipcover'
  license :gratis

  app 'SlipCover.app'
end
