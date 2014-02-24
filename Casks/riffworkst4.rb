class Riffworkst4 < Cask
  url 'http://www.sonomawireworks.com/accountManagerUI/files/RiffWorksT4.dmg'
  homepage 'http://www.sonomawireworks.com/T4/'
  version '2.6'
  sha256 '83c51fa4a08ad19f92418572e11b09ebb33f9a0341ff9e0173d0eb0c7709cddb'
  install 'RiffWorksT4V2_6.pkg'
  uninstall :pkgutil => 'com.sonomawireworks.riffworkst4'
end
