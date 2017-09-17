cask 'acorn' do
  version '6.0.3'
  sha256 '31c92aac15f1073b1563eb68f5f9142d6e464c23d15d5f9185070cba163df564'

  url 'https://secure.flyingmeat.com/download/Acorn.zip'
  appcast "http://www.flyingmeat.com/download/acorn#{version.major}update.xml",
          checkpoint: '79a430c630b3b96137418a36dd1c80187330b22e3d4c263fedc9f7bf4bf149c2'
  name 'Acorn'
  homepage 'https://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
