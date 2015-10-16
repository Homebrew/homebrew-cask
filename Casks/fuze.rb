cask :v1 => 'fuze' do
  version :latest
  sha256 :no_check

  # fuzemeeting.com is the official download host per the vendor homepage
  url 'https://www.fuzemeeting.com/fuze/mac_download'
  name 'Fuze'
  homepage 'https://www.fuze.com/'
  license :commercial

  installer :manual => 'Fuze_39e32182.app'
end
