class R < Cask
  if MacOS.version == :mavericks
    url 'http://cran.rstudio.com/bin/macosx/R-3.1.1-mavericks.pkg'
    sha256 'd2f4e4f68628d998f81146eacd929ef6fb9bc01ca93d968e6562a3a6372c4d93'
    install 'R-3.1.1-mavericks.pkg'
  else
    url 'http://cran.rstudio.com/bin/macosx/R-3.1.1-snowleopard.pkg'
    sha256 '4db95d2bffdaa342a89d01088f47cfe6575ed7e953c31ea4dea629a0942b56b6'
    install 'R-3.1.1-snowleopard.pkg'
  end
  homepage 'http://www.r-project.org/'
  version '3.1.1'
  # packages: 'org.r-project.R.x86_64.fw.pkg',
  #           'org.r-project.R.x86_64.GUI.pkg',
  #           'org.r-project.x86_64.tcltk.x11'
  uninstall :pkgutil => '^org\.r-project\.(R\.)?x86_64\.(fw|GUI|tcltk).*',
            :files => ['/usr/bin/R', '/usr/bin/Rscript',
                       '/Library/Frameworks/R.Framework/Versions/3.1',
                       '/Library/Frameworks/R.Framework/Versions/Current']
end
