cask 'microsoft-r-open' do
  version '3.4.4'
  sha256 '290bdd23e045f28b30f4dc346abf1ac5fb4b8ac9e560df1170320d6b7baf6ffc'

  # mran.blob.core.windows.net was verified as official when first introduced to the cask
  url "https://mran.blob.core.windows.net/install/mro/#{version}/microsoft-r-open-#{version}.pkg"
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
