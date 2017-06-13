cask 'shoes' do
  version '3.3.2'
  sha256 'f88ee4af6194aec25b322ca64b24c992cf00234dce37a92312dc31ce77aef232'

  # shoes.mvmanila.com/public/shoes was verified as official when first introduced to the cask
  url "https://shoes.mvmanila.com/public/shoes/shoes-#{version}-osx-10.9.tgz"
  appcast 'http://shoesrb.com/downloads/',
          checkpoint: 'abf17e6d182e8d4506fed1a4ffc2f2f88430f217f5177065f497b8314a3a0755'
  name 'Shoes'
  homepage 'http://shoesrb.com/'

  app 'Shoes.app'
end
