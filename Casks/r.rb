cask 'r' do
  version '3.6.0'
  sha256 '51e58a2766e091a85776ab8e44598e4fdd99b066b25b439777f3d4089803a5f1'

  url "https://cloud.r-project.org/bin/macosx/R-#{version}.pkg"
  appcast 'https://cloud.r-project.org/bin/macosx/'
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

  zap trash: [
               '~/.R',
               '~/.Rapp.history',
               '~/.RData',
               '~/.Rhistory',
               '~/.Rprofile',
               '~/Library/R',
               '~/Library/Caches/org.R-project.R',
             ]

  caveats do
    files_in_usr_local
  end
end
