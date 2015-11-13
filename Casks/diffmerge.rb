cask :v1 => 'diffmerge' do
  version '4.2.1.1013'
  sha256 '1f19897513fb7af8fc7d3b40643bd6dee80e401c7245a0ed774e8211fd48e388'

  url "http://download.sourcegear.com/DiffMerge/#{version.sub(/\.\d+$/, '')}/DiffMerge.#{version}.intel.stable.pkg"
  name 'DiffMerge'
  homepage 'https://www.sourcegear.com/diffmerge'
  license :commercial

  pkg "DiffMerge.#{version}.intel.stable.pkg"

  uninstall :pkgutil => 'com.sourcegear.DiffMerge'

  zap       :delete  => [
                         '~/Library/Preferences/com.sourcegear.DiffMerge.plist',
                         '~/Library/Preferences/SourceGear DiffMerge Preferences',
                         '~/Library/Saved Application State/com.sourcegear.DiffMerge.savedState'
                        ]
end
