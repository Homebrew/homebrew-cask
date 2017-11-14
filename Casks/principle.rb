cask 'principle' do
  version '3.4'
  sha256 '7ad5e01698a85b71bb2c2d9e48a2162a79a5795b82c59f6c6559007db70601f8'

  url "http://principleformac.com/download/Principle_#{version.dots_to_underscores}.zip"
  appcast 'http://principleformac.com/update2.xml',
          checkpoint: 'd370be701403fb98bb79aaeac58f150585a83553b32c43b7bb74fac8e4d5dc83'
  name 'Principle'
  homepage 'http://principleformac.com/'

  app 'Principle.app'
end
