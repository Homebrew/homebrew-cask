cask :v1 => 'r' do
  version '3.1.2'

  if MacOS.version <= :snow_leopard
    sha256 'aec21b31b3a6c4e777690bd4e2f19fa71f2ae443dd645d4fa93a0399345e5aac'
    url "http://cran.rstudio.com/bin/macosx/R-#{version}-snowleopard.pkg"
    pkg "R-#{version}-snowleopard.pkg"
  else
    sha256 'ea1312d3d888861f33f5225a159fe39a5e90f382996eadc388808eb59bf6003f'
    url "http://cran.rstudio.com/bin/macosx/R-#{version}-mavericks.pkg"
    pkg "R-#{version}-mavericks.pkg"
  end

  homepage 'http://www.r-project.org/'
  license :gpl

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
end
