cask 'r' do
  version '4.0.2'
  sha256 '1deaa727c424bd199a9564edd8284ea8cfe97fb54808b665f813e9098b1040e3'

  url "https://cloud.r-project.org/bin/macosx/R-#{version}.pkg"
  appcast 'https://cloud.r-project.org/bin/macosx/'
  name 'R'
  homepage 'https://www.r-project.org/'

  depends_on macos: '>= :el_capitan'

  pkg "R-#{version}.pkg"

  uninstall pkgutil: [
                       'org.r-project*',
                       'org.R-project*',
                     ],
            delete:  [
                       '/Library/Frameworks/R.Framework',
                       '/usr/bin/R',
                       '/usr/bin/Rscript',
                     ]

  zap trash: [
               '~/.R',
               '~/.Rapp.history',
               '~/.RData',
               '~/.Rhistory',
               '~/.Rprofile',
               '~/Library/R',
               '~/Library/Caches/org.R-project.R',
             ]

  caveats do
    files_in_usr_local
  end
end
