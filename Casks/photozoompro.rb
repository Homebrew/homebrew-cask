cask :v1 => 'photozoompro' do
  version :latest
  sha256 :no_check

  url 'https://www.benvista.com/photozoompro/download/mac'
  name 'PhotoZoom Pro'
  homepage 'http://www.benvista.com/photozoompro'
  license :freemium

  app 'PhotoZoom Pro 6.app'
end
