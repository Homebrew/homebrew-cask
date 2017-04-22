cask 'appcelerator-studio' do
  version '4.8.1'
  sha256 '52a2822111127bf4adc1b2071993db7855fdbc1e577ed9617813ee4198376563'

  # titanium-studio.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://titanium-studio.s3.amazonaws.com/#{version}/Appcelerator_Studio.dmg"
  name 'Appcelerator Studio'
  homepage 'http://www.appcelerator.com'

  pkg 'Appcelerator Studio.pkg'

  uninstall delete: '/Applications/Appcelerator Studio'
end
