class R < Cask
  url 'http://cran.rstudio.com/bin/macosx/R-3.0.3.pkg'
  homepage 'http://www.r-project.org/'
  version '3.0.3'
  sha256 '8a4c5b89bf8f05c8e772f75b72d4b04d860afecf741fa2016806b94b65dd1906'
  install 'R-3.0.3.pkg'
  # packages: 'org.r-project.R.x86_64.fw.pkg',
  #           'org.r-project.R.x86_64.GUI.pkg',
  #           'org.r-project.x86_64.tcltk.x11'
  uninstall :pkgutil => '^org\.r-project\.(R\.)?x86_64\.(fw|GUI|tcltk).*',
            :files => ['/usr/bin/R', '/usr/bin/Rscript',
                       '/Library/Frameworks/R.Framework/Versions/3.0',
                       '/Library/Frameworks/R.Framework/Versions/Current']
end
