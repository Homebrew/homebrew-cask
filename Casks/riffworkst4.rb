cask 'riffworkst4' do
  # note: "4" is not a version number, but an intrinsic part of product name "T4"
  version '2.6'
  sha256 '83c51fa4a08ad19f92418572e11b09ebb33f9a0341ff9e0173d0eb0c7709cddb'

  url 'https://www.sonomawireworks.com/accountManagerUI/files/RiffWorksT4.dmg'
  name 'RiffWorks T4'
  homepage 'https://www.sonomawireworks.com/T4/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "RiffWorksT4V#{version.gsub('.', '_')}.pkg"

  uninstall :pkgutil => 'com.sonomawireworks.riffworkst4'
end
