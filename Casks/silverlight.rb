cask :v1 => 'silverlight' do
  version '5.1.30514.0'
  sha256 '469a7b19cf4a87a1248caa850c7de61c88e67c0c5511fe77032817cd79df9dea'

  url 'http://silverlight.dlservice.microsoft.com/download/F/8/C/F8C0EACB-92D0-4722-9B18-965DD2A681E9/30514.00/Silverlight.dmg'
  homepage 'http://www.microsoft.com/silverlight/'
  license :unknown    # todo: improve this machine-generated value

  pkg 'Silverlight.pkg'

  uninstall :pkgutil => 'com.microsoft.SilverlightInstaller'
  zap       :delete  => '~/Library/Application Support/Microsoft/Silverlight',
            :rmdir   => '~/Library/Application Support/Microsoft/'
end
