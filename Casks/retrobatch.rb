cask 'retrobatch' do
  version '1.4.1'
  sha256 '06a19f210b62401c80004ea73b5707c30b95899c859225f1e3799f7e020359db'

  url 'https://flyingmeat.com/download/Retrobatch.zip'
  appcast "https://www.flyingmeat.com/download/retrobatch#{version.major}update.xml"
  name 'Retrobatch'
  homepage 'https://flyingmeat.com/retrobatch/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Retrobatch.app'
end
