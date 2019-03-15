cask 'r' do
  version '3.5.3'
  sha256 '2f17ad05bac502769f392f778291c407c9933e90bd86815daa2c9cc7661f5158'

  url "https://cloud.r-project.org/bin/macosx/R-#{version}.pkg"
  appcast 'https://www.r-project.org/'
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
