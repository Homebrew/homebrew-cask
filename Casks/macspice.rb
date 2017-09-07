cask 'macspice' do
  version '3.1.17'
  sha256 'd66d5c2082d74ff01fde68d0048237b014d298e13fee5e445739b13302fe27d0'

  url "http://www.macspice.com/mirror/binaries/v#{version}/MacSpice3f5.dmg"
  appcast 'http://www.macspice.com/AppCast-v2.xml',
          checkpoint: 'b1dbf97e266f9ce8b26f14fbfc8cdb7158cd0ea48c76838d4bea3e7652c904d7'
  name 'MacSpice'
  homepage 'https://www.macspice.com/'

  app 'MacSpice.app'
end
