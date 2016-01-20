cask 'pagico' do
  version '7.4.1868'
  sha256 '77244bef8628daac7ed5ee12e78e2e8084946c5b901b15757670c76364c0e9ba'

  url "https://www.pagico.com/downloads/Pagico_Desktop_r#{version.split('.')[2]}.dmg"
  name 'Pagico'
  homepage 'https://www.pagico.com/'
  license :commercial

  depends_on macos: '>= :lion'

  pkg 'Install Pagico.pkg'

  uninstall pkgutil: 'com.pagico.*',
            delete:  '/Applications/Pagico'
end
