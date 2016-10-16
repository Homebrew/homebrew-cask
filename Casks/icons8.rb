cask 'icons8' do
  # note: "8" is not a version number, but an intrinsic part of the product name
  version :latest
  sha256 :no_check

  url 'https://icons8.com/icons8_mac_app'
  appcast 'https://maxcdn.icons8.com/download/icons8_cast.xml',
          checkpoint: '2acbe167d4fb9a4f3e46e28bf9a0ca3934b8f55371b90c94bcff1c3ecfc1d4d2'
  name 'Icons8 App'
  homepage 'https://icons8.com/'

  app 'Icons8.app'
end
