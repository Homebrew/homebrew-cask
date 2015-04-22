cask :v1 => 'r' do
  version '3.1.3'

  if MacOS.release < :mavericks
    sha256 '4d590d285e5085073ff1a1cb525a2261895b0bf3998a24071efadb33b2be530e'
    # rstudio.com is the official download host per the vendor homepage
    url "http://cran.rstudio.com/bin/macosx/R-#{version}-snowleopard.pkg"
    pkg "R-#{version}-snowleopard.pkg"
  else
    sha256 '28445419c73b03dd3e0e1199114e23c83e56a5140f8c43f37b63cb550dc0eba7'
    # rstudio.com is the official download host per the vendor homepage
    url "http://cran.rstudio.com/bin/macosx/R-#{version}-mavericks.pkg"
    pkg "R-#{version}-mavericks.pkg"
  end

  name 'R'
  homepage 'http://www.r-project.org/'
  license :gpl

  depends_on :macos => '>= :snow_leopard'

  uninstall :pkgutil => [
                         # eg org.r-project.R.maverics.fw.pkg
                         #   org.r-project.R.mavericks.GUI.pkg
                         'org\.r-project\.R\..*(fw|GUI)\.pkg',
                         # eg org.r-project.x86_64.tcltk.x11
                         'org.r-project\..*\.tcltk.x11',
                        ],
            :delete => [
                        # symlinks
                        '/usr/bin/R',
                        '/usr/bin/Rscript',
                        '/Library/Frameworks/R.Framework/Versions/Current',
                        # :pkgutil won't delete this dir if the fontconfig cache was written to at
                        # /Library/Frameworks/R.Framework/Versions/3.1/Resources/fontconfig/cache
                        '/Library/Frameworks/R.Framework/Versions/3.1',
                       ]
  zap       :delete => [
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
