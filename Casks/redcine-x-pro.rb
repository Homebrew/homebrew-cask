cask :v1 => 'redcine-x-pro' do
  version '31.0.0'
  sha256 '9393f84d839214ef4b692434ced8f4f9ecd12f8f49d8230d84c1bef9fe44d4db'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://s3.amazonaws.com/red_3/downloads/software/rcx/REDCINE-X_PRO_Build_#{version.to_i}_OSX.zip"
  homepage 'https://www.red.com/'
  license :commercial

  pkg "REDCINE-X_PRO_Build_#{version.to_i}.pkg"
  uninstall :pkgutil => [
                         'com.red.pkg.REDCINE-X PRO',
                         'com.red.pkg.SupportLibs',
                        ]
end
