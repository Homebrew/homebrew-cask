cask 'clashx-pro' do
  version '1.30.0.2'
  sha256 'dd6bf4c0ba9ac4ea15840ea25abf5f69a58fa572d1f597bc6bf1499443bd8311'

  # appcenter-filemanagement-distrib2ede6f06e.azureedge.net was verified as official when first introduced to the cask
  url 'https://appcenter-filemanagement-distrib2ede6f06e.azureedge.net/a01bdef6-e1a1-4e78-82b9-ac6c3820742c/ClashX.dmg?sv=2019-02-02&sr=c&sig=rWQ0vSRaE1Xh0%2FQpuSvic08a22L6Paytlk3rVjbguKI%3D&se=2020-07-18T04%3A03%3A02Z&sp=r&download_origin=appcenter'
  name 'ClashX Pro'
  homepage 'https://install.appcenter.ms/users/clashx/apps/clashx-pro/distribution_groups/public'

  app 'ClashX Pro.app'

  zap trash: [
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.west2online.ClashXPro',
               '~/Library/Caches/com.west2online.ClashXPro',
               '~/Library/Logs/ClashX Pro',
               '~/Library/Preferences/com.west2online.ClashXPro.plist',
               '~/Library/Application Support/com.west2online.ClashXPro',
             ]
end
