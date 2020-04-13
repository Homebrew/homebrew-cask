cask 'spires' do
  version '1.8.7'
  sha256 '04f8ae57bd5c47473aa46fb5ed80e85250baba0736ebbcd814db4ee3ad05c6b6'

  url "https://member.ipmu.jp/yuji.tachikawa/spires/zips/spires_#{version}.zip"
  name 'spires'
  homepage 'https://member.ipmu.jp/yuji.tachikawa/spires/'

  app 'spires.app'
end
