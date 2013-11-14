class Riffworkst4 < Cask
  url 'http://www.sonomawireworks.com/accountManagerUI/files/RiffWorksT4.dmg'
  homepage 'http://www.sonomawireworks.com/T4/'
  version '2.6'
  sha1 '688f59293331bb2d29316ecde868b90deeddc9da'
  install 'RiffWorksT4V2_6.pkg'
  uninstall :pkgutil => 'com.sonomawireworks.riffworkst4'
end
