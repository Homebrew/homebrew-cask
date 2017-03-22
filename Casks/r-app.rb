cask 'r-app' do
  if MacOS.version <= :mountain_lion
    version '3.2.1'
    sha256 '88b9a20af00a916f3902ccac83098643b95a2801eb4775d38130b26871323a3f'
    url "https://cloud.r-project.org/bin/macosx/R-#{version}-snowleopard.pkg"
    pkg "R-#{version}-snowleopard.pkg"
  else
    version '3.3.3'
    sha256 '77d7a145d1f7d5c3f5bd7310ae2beb7349118528d938e519845ce7d205b4c864'
    url "https://cloud.r-project.org/bin/macosx/R-#{version}.pkg"
    pkg "R-#{version}.pkg"
  end

  appcast 'https://www.r-project.org/',
          checkpoint: '875ca36d0e218b70c1216b51ff18622612421ab31d54a8a1b5ba1ca6a0a94f3b'
  name 'R'
  homepage 'https://www.r-project.org/'

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
