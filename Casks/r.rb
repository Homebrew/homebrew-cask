class R < Cask
  url 'http://cran.rstudio.com/bin/macosx/R-3.0.2.pkg'
  homepage 'http://www.r-project.org/'
  version '3.0.2'
  sha256 'e40f09447c77e3488964efb0623be26520718555a3ab0eb8e048325e5e4c040a'
  install 'R-3.0.2.pkg'
  # packages: 'org.r-project.R.x86_64.fw.pkg',
  #           'org.r-project.R.x86_64.GUI.pkg',
  #           'org.r-project.x86_64.tcltk.x11'
  uninstall :pkgutil => '^org\.r-project\.(R\.)?x86_64\.(fw|GUI|tcltk).*',
            :files => ['/usr/bin/R', '/usr/bin/Rscript',
                       '/Library/Frameworks/R.Framework/Versions/3.0',
                       '/Library/Frameworks/R.Framework/Versions/Current']
end
