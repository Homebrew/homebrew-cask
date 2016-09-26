cask 'r-app' do
  if MacOS.version < :mavericks
    version '3.2.1'
    sha256 '88b9a20af00a916f3902ccac83098643b95a2801eb4775d38130b26871323a3f'
    url "https://cloud.r-project.org/bin/macosx/R-#{version}-snowleopard.pkg"
    pkg "R-#{version}-snowleopard.pkg"
  else
    version '3.3.1'
    sha256 'ecef7e7ee7ee5a43076537b8ef7246e451d6170874e3036a46d5b807cdf7b8de'
    url "https://cloud.r-project.org/bin/macosx/R-#{version}.pkg"
    pkg "R-#{version}.pkg"
  end

  name 'R'
  homepage 'https://www.r-project.org'
  license :gpl

  depends_on macos: '>= :snow_leopard'

  uninstall pkgutil: [
                       'org.r-project.R.maverics.fw.pkg',
                       'org.r-project.R.maverics.GUI.pkg',
                       'org.r-project.x86_64.tcltk.x11',
                       'org.r-project.x86_64.texinfo',
                     ],
            delete:  [
                       '/Library/Frameworks/R.Framework',
                       '/usr/bin/R',
                       '/usr/bin/Rscript',
                     ]

  zap       delete: [
                      '~/.R',
                      '~/.Rapp.history',
                      '~/.RData',
                      '~/.Rhistory',
                      '~/.Rprofile',
                      '~/Library/Caches/org.R-project.R',
                      '~/Library/R',
                    ]

  caveats do
    files_in_usr_local
  end
end
