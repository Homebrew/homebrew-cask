cask 'microsoft-r-open' do
  version '3.4.3'
  sha256 '4998500839389821f995d3ebb89ee7e8e5a35a61a63ba0ac54d63adf53288947'

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
