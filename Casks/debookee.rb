cask 'debookee' do
  version '5.2.2'
  sha256 '521afdc999dae84fc5a1660c1ad918244b0254566be45e857cec4dc6d69daff3'

  # iwaxx.com/debookee/ was verified as official when first introduced to the cask
  url 'https://www.iwaxx.com/debookee/debookee.zip'
  appcast 'https://www.iwaxx.com/debookee/appcast.php',
          checkpoint: '345e8e107a056c423f6546c7322bbc451af54d9e937494391cdaf73f0b011433'
  name 'Debookee'
  homepage 'https://debookee.com/'

  app "Debookee #{version}/Debookee.app"
end
