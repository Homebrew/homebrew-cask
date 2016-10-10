cask 'microsoft-r-open' do
  version '3.3.1'
  sha256 'dd804948450bc68fb81ad2c06da97b5af90008374ed291fdfa7ca9c69a6f1272'

  url "https://mran.microsoft.com/install/mro/#{version}/microsoft-r-open-#{version}.pkg"
  name 'Microsoft R Open'
  name 'MRO'
  homepage 'https://mran.microsoft.com'

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

  caveats do
    files_in_usr_local
  end
end
