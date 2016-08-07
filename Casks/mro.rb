cask 'mro' do
  version '3.2.4'
  sha256 'bd3e42607b59d98b51cf5896d359580872e5971c05bfa82f83930e4fbfbc5c16'

  url "https://mran.revolutionanalytics.com/install/mro/#{version}/MRO-#{version}-OSX.pkg"
  name 'Microsoft R Open'
  name 'MRO'
  homepage 'https://mran.revolutionanalytics.com'
  license :gpl

  pkg "MRO-#{version}-OSX.pkg"

  uninstall pkgutil: [
                       'com.microsoft.pkg.untitled_package',
                       'com.microsoft.rservices.mro2',
                       'com.microsoft.rservices.mro1',
                     ],
            delete:  [
                       '/usr/bin/R',
                       '/usr/bin/Rscript',
                       '/Library/Frameworks/R.Framework/Versions/Current',
                       '/Library/Frameworks/R.Framework/Versions/3.2',
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
