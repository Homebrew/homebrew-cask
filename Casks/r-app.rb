cask 'r-app' do
  if MacOS.version <= :mountain_lion
    version '3.2.1'
    sha256 '88b9a20af00a916f3902ccac83098643b95a2801eb4775d38130b26871323a3f'
    url "https://cloud.r-project.org/bin/macosx/R-#{version}-snowleopard.pkg"
    pkg "R-#{version}-snowleopard.pkg"
  else
    version '3.4.1'
    sha256 'ee4d0bb6954866ee23f0eb97f9a69535e81108913121acc2ae296dbd14265d2b'
    url "https://cloud.r-project.org/bin/macosx/R-#{version}.pkg"
    pkg "R-#{version}.pkg"
  end

  appcast 'https://www.r-project.org/',
          checkpoint: '895d7f279ddb68bd3bb1ce6c7213eb8708f0dfe815d984d25426e8f101faebad'
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
