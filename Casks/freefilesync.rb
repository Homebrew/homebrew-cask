cask 'freefilesync' do
  version '10.12'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip",
      user_agent: :fake,
      referer:    'https://freefilesync.org/download.php',
      cookies:    {
                    '__cfduid' => 'd0e5d1f63ab8177dd75e7278fc77e2ab21557920468',
                    'ukey'     => 'crfjj0fjxvxmkx57l9dvqeku0fcy6gbr',
                  }
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  pkg "FreeFileSync_#{version}_macOS.pkg"

  uninstall pkgutil: [
                       'org.freefilesync.pkg.FreeFileSync',
                       'org.freefilesync.pkg.RealTimeSync',
                     ]
end
