cask :v1 => 'save-as-wwf' do
  version '1.0'
  sha256 'a11a39ec95e694ddca3af2f505c6a2f958cb2f96471ac8c700ff0d676a1d68d6'

  url "http://www.saveaswwf.com/fileadmin/user_upload/wwfPlugin/SAVE_AS_WWF_#{version}.pkg.zip"
  homepage 'http://www.saveaswwf.com/'
  license :closed

  pkg 'SAVE_AS_WWF_1.0.pkg'
  uninstall :pkgutil => 'de.wwf.saveAsWwf.SAVEASWWF.pkg'
end
