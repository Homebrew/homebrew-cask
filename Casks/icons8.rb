cask 'icons8' do
  # note: "8" is not a version number, but an intrinsic part of the product name
  version '5.2'
  sha256 '05f9a271624e3e1321067ee549110329431c609c07ddde00b568955e0318dd8c'

  url 'https://icons8.com/icons8_mac_app'
  appcast 'https://maxcdn.icons8.com/download/icons8_cast.xml',
          checkpoint: 'e913bd010e996305fd490a300b73149330ae378988097ddc81c88f40547f1453'
  name 'Icons8 App'
  homepage 'https://icons8.com/'
  license :freemium

  app 'Icons8.app'
end
