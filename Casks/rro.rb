cask :v1 => 'rro' do
  version '3.2.1'
  sha256 '786179097074036328e64d96344255063271cbc809202e919bb561fb8f616f23'

  url "https://mran.revolutionanalytics.com/install/RRO-#{version}-OSX.pkg"
  name 'Revolution R Open'
  name 'Revolution R'
  name 'RRO'
  homepage 'http://www.revolutionanalytics.com'
  license :gpl

  pkg "RRO-#{version}-OSX.pkg"

  uninstall :pkgutil => [
                         'com.mygreatcompany.pkg.untitled_package_1',
                         'com.mygreatcompany.pkg.untitled-package',
                         'org.R-project.R',
                         'org.r-project.R-framework'
                        ],
            :delete => [
                        '/usr/bin/R',
                        '/usr/bin/Rscript',
                        '/Library/Frameworks/R.Framework/Versions/Current',
                        '/Library/Frameworks/R.Framework/Versions/3.2',
                       ]

  zap       :delete => [
                        '~/.R',
                        '~/.RData',
                        '~/.Rapp.history',
                        '~/.Rhistory',
                        '~/.Rprofile',
                        '~/Library/R',
                        '~/Library/Caches/org.R-project.R',
                       ]

  caveats do
    files_in_usr_local
  end
end
