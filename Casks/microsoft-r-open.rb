cask 'microsoft-r-open' do
  version '3.4.2'
  sha256 'f533bcef949162d1036d92e9d12c414a4713c98a81641dee95b7f71717669832'

  url "https://mran.microsoft.com/install/mro/#{version}/microsoft-r-open-#{version}.pkg"
  name 'Microsoft R Open'
  name 'MRO'
  homepage 'https://mran.microsoft.com/'

  pkg "microsoft-r-open-#{version}.pkg"

  uninstall pkgutil: [
                       'com.microsoft.pkg.mro-framework',
                       'com.microsoft.pkg.mro-gui',
                     ],
            delete:  [
                       '/usr/bin/R',
                       '/usr/bin/Rscript',
                       '/Library/Frameworks/R.Framework/Versions/Current',
                       "/Library/Frameworks/R.Framework/Versions/#{version.major_minor}",
                     ]

  zap trash: [
               '~/.R',
               '~/.RData',
               '~/.Rapp.history',
               '~/.Rhistory',
               '~/.Rprofile',
               '~/Library/R',
               '~/Library/Caches/org.R-project.R',
             ]
end
