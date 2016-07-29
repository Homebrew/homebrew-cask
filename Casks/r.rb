cask 'r' do
  if MacOS.release < :mavericks
    version '3.2.1'
    sha256 '88b9a20af00a916f3902ccac83098643b95a2801eb4775d38130b26871323a3f'
    # cran.cnr.berkeley.edu was verified as official when first introduced to the cask
    url "https://cran.cnr.berkeley.edu/bin/macosx/R-#{version}-snowleopard.pkg"
    pkg "R-#{version}-snowleopard.pkg"
  else
    version '3.3.1'
    sha256 'ecef7e7ee7ee5a43076537b8ef7246e451d6170874e3036a46d5b807cdf7b8de'
    # cran.cnr.berkeley.edu was verified as official when first introduced to the cask
    url "https://cran.cnr.berkeley.edu/bin/macosx/R-#{version}.pkg"
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
