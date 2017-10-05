cask 'r-app' do
  if MacOS.version <= :mountain_lion
    version '3.2.1'
    sha256 '88b9a20af00a916f3902ccac83098643b95a2801eb4775d38130b26871323a3f'
    url "https://cloud.r-project.org/bin/macosx/R-#{version}-snowleopard.pkg"
    pkg "R-#{version}-snowleopard.pkg"
  else
    version '3.4.2'
    sha256 '34d6be8299f3b5f31707453a62245b93def2abab92f690563d254c87fa04bf9f'
    url "https://cloud.r-project.org/bin/macosx/R-#{version}.pkg"
    pkg "R-#{version}.pkg"
  end

  appcast 'https://www.r-project.org/',
          checkpoint: '83fe7222a6a6f38223460fc32d82da887cfc25aee2647ee6ec5695ee7953c1a0'
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
