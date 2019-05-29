cask 'microsoft-bing-ads-editor' do
  version :latest
  sha256 :no_check

  # msbingadseditor.blob.core.windows.net was verified as official when first introduced to the cask
  url 'https://msbingadseditor.blob.core.windows.net/production-mac/a/MicrosoftBingAdsEditor.dmg'
  name 'Microsoft Bing Ads Editor'
  homepage 'https://advertise.bingads.microsoft.com/solutions/tools/bing-ads-editor'

  app 'Microsoft Bing Ads Editor.app'
end
