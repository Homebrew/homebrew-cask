class ChefDevelopmentKit < Cask
  url 'https://opscode-omnibus-packages.s3.amazonaws.com/mac_os_x/10.9/x86_64/chefdk-0.0.1-1.dmg'
  homepage 'http://www.getchef.com/downloads/chef-dk/mac/'
  version '0.0.1-1'
  sha256 '41a101786cf72b65d267782826ace70cbd8153f1d025c95f2e451c5c7dee8ded'
  install 'chefdk.pkg'
end
