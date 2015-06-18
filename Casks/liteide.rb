cask :v1 => 'liteide' do
  version '27.1'
  sha256 'ed757c9983a52b2e61bd8cecad0f386d0060244ce3169e7be14fe2cdbd213369'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/liteide/X#{version}/liteidex#{version}.macosx.zip"
  name 'LiteIDE'
  homepage 'https://github.com/visualfc/liteide'
  license :gpl

  app 'LiteIDE.app'
end
