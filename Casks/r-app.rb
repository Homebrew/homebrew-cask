cask 'r-app' do
  if MacOS.version <= :mountain_lion
    version '3.2.1'
    sha256 '88b9a20af00a916f3902ccac83098643b95a2801eb4775d38130b26871323a3f'
    url "https://cloud.r-project.org/bin/macosx/R-#{version}-snowleopard.pkg"
    pkg "R-#{version}-snowleopard.pkg"
  else
    version '3.4.0'
    sha256 '6ec412a0d9b8eaef19f69f3e25a993dcfd53a8294ee17d04052c243037554646'
    url "https://cloud.r-project.org/bin/macosx/R-#{version}.pkg"
    pkg "R-#{version}.pkg"
  end

  appcast 'https://www.r-project.org/',
          checkpoint: 'cc725ddf69caa3a397b6f188de9d9e3c3e0cbfc6a03cb0bc67a0d27f9a6c3192'
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
