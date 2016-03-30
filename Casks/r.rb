cask 'r' do
  if MacOS.release < :mavericks
    version '3.2.1'
    sha256 '88b9a20af00a916f3902ccac83098643b95a2801eb4775d38130b26871323a3f'
    # rstudio.com is the official download host per the vendor homepage
    url "https://cran.rstudio.com/bin/macosx/R-#{version}-snowleopard.pkg"
    pkg "R-#{version}-snowleopard.pkg"
  else
    version '3.2.4'
    sha256 '9060e305d5b2f8ce3dfccdac5c0614bee7a00ac715f1e1e1b36f7934a5c14488'
    # rstudio.com is the official download host per the vendor homepage
    url "https://cran.rstudio.com/bin/macosx/R-#{version}.pkg"
    pkg "R-#{version}.pkg"
  end

  name 'R'
  homepage 'https://www.r-project.org/'
  license :gpl

  depends_on macos: '>= :snow_leopard'

  uninstall pkgutil: [
                       # eg org.r-project.R.maverics.fw.pkg
                       #   org.r-project.R.mavericks.GUI.pkg
                       'org\.r-project\.R\..*(fw|GUI)\.pkg',
                       # eg org.r-project.x86_64.tcltk.x11
                       'org.r-project\..*\.tcltk.x11',
                     ],
            delete:  [
                       # symlinks
                       '/usr/bin/R',
                       '/usr/bin/Rscript',
                       '/Library/Frameworks/R.Framework/Versions/Current',
                       # :pkgutil won't delete this dir if the fontconfig cache was written to at
                       # /Library/Frameworks/R.Framework/Versions/3.2/Resources/fontconfig/cache
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
