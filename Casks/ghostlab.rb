cask :v1 => 'ghostlab' do
  version '2.0.9'
  sha256 'f727fc601cae69089a6099512ced317615e447337b3498cc597e80541b83b38a'

  url "http://awesome.vanamco.com/Ghostlab2/update/packages/mac/Ghostlab2-#{version}.zip"
  appcast 'http://awesome.vanamco.com/Ghostlab2/update/ghostlab2-cast.xml'
  name 'Ghostlab'
  homepage 'http://vanamco.com/ghostlab/'
  license :commercial

  app 'Ghostlab2.app'
end
