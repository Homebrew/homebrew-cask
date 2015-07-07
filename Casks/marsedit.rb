cask :v1 => 'marsedit' do
  version '3.7.1'
  sha256 'c0ff0b59aae840b53a54b7515bfa4b13e5a3b38275a281ab9d5b5a097367a474'

  url "http://www.red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'http://www.red-sweater.com/marsedit/appcast3.php',
          :sha256 => '02f5ae0eddaa596db862bda36a4c84c47848cfd15cfe384b0d0322d8f73a80ad'
  name 'MarsEdit'
  homepage 'http://www.red-sweater.com/marsedit/'
  license :commercial

  app 'MarsEdit.app'
end
