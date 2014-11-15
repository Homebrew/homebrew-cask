cask :v1 => 'skydrive' do
  version '17.0'
  sha256 '02fd7450e501228dc94108068636c3085a970d039198472fa8eb4bbbf3ee3722'

  url 'http://wl.dlservice.microsoft.com/download/5/6/E/56EAD987-4914-4E8D-A7AD-DF4ADA7E2C5F/SkyDrive.pkg'
  homepage 'http://windows.microsoft.com/en-us/skydrive/download'
  license :unknown

  pkg 'SkyDrive.pkg'
  uninstall :pkgutil => 'com.microsoft.SkyDriveInstaller',
            :delete  => '/Applications/SkyDrive.app'
end
