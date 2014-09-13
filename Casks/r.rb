class R < Cask
  if MacOS.version < :mavericks
    url 'http://cran.rstudio.com/bin/macosx/R-3.1.1-snowleopard.pkg'
    sha256 '4db95d2bffdaa342a89d01088f47cfe6575ed7e953c31ea4dea629a0942b56b6'
    pkg 'R-3.1.1-snowleopard.pkg'
  else
    url 'http://cran.rstudio.com/bin/macosx/R-3.1.1-mavericks.pkg'
    sha256 'd2f4e4f68628d998f81146eacd929ef6fb9bc01ca93d968e6562a3a6372c4d93'
    pkg 'R-3.1.1-mavericks.pkg'
  end
  homepage 'http://www.r-project.org/'
  version '3.1.1'
  uninstall :pkgutil => [
                         # eg org.r-project.R.maverics.fw.pkg
                         #   org.r-project.R.mavericks.GUI.pkg
                         'org\.r-project\.R\..*(fw|GUI)\.pkg',
                         # eg org.r-project.x86_64.tcltk.x11
                         'org.r-project\..*\.tcltk.x11',
                        ],
            :files => [
                       # symlinks
                       '/usr/bin/R',
                       '/usr/bin/Rscript',
                       '/Library/Frameworks/R.Framework/Versions/Current',
                       # :pkgutil won't delete this dir if the fontconfig cache was written to at
                       # /Library/Frameworks/R.Framework/Versions/3.1/Resources/fontconfig/cache
                       '/Library/Frameworks/R.Framework/Versions/3.1',
                      ]
  zap :files => [
                 '~/.R',
                 '~/.Rhistory',
                 '~/.Rprofile',
                ]
end
