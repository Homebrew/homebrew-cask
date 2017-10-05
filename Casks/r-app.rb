cask 'r-app' do
  version '3.4.2'
  sha256 '34d6be8299f3b5f31707453a62245b93def2abab92f690563d254c87fa04bf9f'

  url "https://cloud.r-project.org/bin/macosx/R-#{version}.pkg"
  appcast 'https://www.r-project.org/',
          checkpoint: '83fe7222a6a6f38223460fc32d82da887cfc25aee2647ee6ec5695ee7953c1a0'
  name 'R'
  homepage 'https://www.r-project.org/'

  depends_on macos: '>= :el_capitan'

  pkg "R-#{version}.pkg"

  uninstall pkgutil: 'org.r-project*',
            delete:  [
                       '/Library/Frameworks/R.Framework',
                       '/usr/bin/R',
                       '/usr/bin/Rscript',
                     ]

  zap delete: '~/Library/Caches/org.R-project.R',
      trash:  [
                '~/.R',
                '~/.Rapp.history',
                '~/.RData',
                '~/.Rhistory',
                '~/.Rprofile',
                '~/Library/R',
              ]

  caveats do
    files_in_usr_local
  end
end
