cask :v1 => 'diffmerge' do
  version '4.2.0.697'
  sha256 '681b43b6ba5750934143798ee6876cde1ffe63db0fd8eae692dd75a59ceb26cf'

  url "http://download-us.sourcegear.com/DiffMerge/#{version.sub(/\.\d+$/, '')}/DiffMerge.#{version}.intel.stable.pkg"
  name 'DiffMerge'
  homepage 'https://www.sourcegear.com/diffmerge'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "DiffMerge.#{version}.intel.stable.pkg"

  uninstall :pkgutil => 'com.sourcegear.DiffMerge'

  zap       :delete  => [
                         '~/Library/Preferences/com.sourcegear.DiffMerge.plist',
                         '~/Library/Preferences/SourceGear DiffMerge Preferences',
                         '~/Library/Saved Application State/com.sourcegear.DiffMerge.savedState'
                        ]

  caveats <<-EOS.undent
    Use "diffmerge --nosplash" to hide the splash screen when using
    diffmerge with external tools such as git.
  EOS
end
