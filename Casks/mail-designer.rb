cask :v1 => 'mail-designer' do
  version '2.3.1'
  sha256 'ea4052960959f7a9fdc2033441eaba2267b0d0df01a7c70da57f747ee5438afd'

  url "http://download.equinux.com/files/other/Mail_Designer_#{version}.zip"
  name 'Mail Designer'
  homepage 'http://equinux.com/us/products/maildesigner2/'
  license :commercial

  app 'Mail Designer.app'
end
