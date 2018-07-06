cask 'microsoft-r-open' do
  version '3.5.0'
  sha256 '105551bc5e6d4d6e1b24d328d27cae01c63fe0a357076bb2599c9be40e296f3a'

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
