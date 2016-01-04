cask 'macscale' do
  version :latest
  sha256 :no_check

  # brinscall.com is the official download host per the vendor homepage
  url 'https://www.brinscall.com/MacScale.zip'
  appcast 'https://www.brinscall.com/updates/macscale.xml',
          :sha256 => 'd5796f727a8ed5e9ed5d59dce484c66a38219edad80b9fb5f6343a3857ed7c1b'
  name 'MacScale'
  homepage 'http://www.macscale.com'
  license :closed

  app 'MacScale.app'
end
