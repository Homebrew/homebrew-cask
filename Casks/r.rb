class R < Cask
  if MacOS.version == :mavericks
    url 'http://cran.rstudio.com/bin/macosx/R-3.1.0-mavericks.pkg'
    sha256 '4139dbaf8c1c810c8a785d4b94e6c276f7a8466259108787e38e982c0b163c7d'
    install 'R-3.1.0-mavericks.pkg'
  else
    url 'http://cran.rstudio.com/bin/macosx/R-3.1.0-snowleopard.pkg'
    sha256 '5c1931ab86166afa3aed07a93fad6415fc80017be4b7777838969a2949d4692c'
    install 'R-3.1.0-snowleopard.pkg'
  end
  homepage 'http://www.r-project.org/'
  version '3.1.0'
  # packages: 'org.r-project.R.x86_64.fw.pkg',
  #           'org.r-project.R.x86_64.GUI.pkg',
  #           'org.r-project.x86_64.tcltk.x11'
  uninstall :pkgutil => '^org\.r-project\.(R\.)?x86_64\.(fw|GUI|tcltk).*',
            :files => ['/usr/bin/R', '/usr/bin/Rscript',
                       '/Library/Frameworks/R.Framework/Versions/3.1',
                       '/Library/Frameworks/R.Framework/Versions/Current']
end
