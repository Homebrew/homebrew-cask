cask 'microsoft-r-open' do
  version '3.4.1'
  sha256 '643c5e953a02163ae73273da27f9c1752180f55bf836b127b6e1829fd1756fc8'

  url "https://mran.microsoft.com/install/mro/#{version}/microsoft-r-open-#{version}.pkg"
  name 'Microsoft R Open'
  name 'MRO'
  homepage 'https://mran.microsoft.com/'

  pkg "microsoft-r-open-#{version}.pkg"

  uninstall pkgutil: [
                       'com.microsoft.pkg.untitled_package',
                       'com.microsoft.rservices.mro2',
                       'com.microsoft.rservices.mro1',
                     ],
            delete:  [
                       '/usr/bin/R',
                       '/usr/bin/Rscript',
                       '/Library/Frameworks/R.Framework/Versions/Current',
                       "/Library/Frameworks/R.Framework/Versions/#{version.major_minor}",
                     ]

  zap       delete: [
                      '~/.R',
                      '~/.RData',
                      '~/.Rapp.history',
                      '~/.Rhistory',
                      '~/.Rprofile',
                      '~/Library/R',
                      '~/Library/Caches/org.R-project.R',
                    ]
end
