cask 'r' do
  version '4.0.1'
  sha256 '975ffb42ef1bef3ff3f8955e8f6938b089d9eb207d097f797c74a741b9520c23'

  url "https://cloud.r-project.org/bin/macosx/R-#{version}.pkg"
  appcast 'https://cloud.r-project.org/bin/macosx/'
  name 'R'
  homepage 'https://www.r-project.org/'

  depends_on macos: '>= :el_capitan'

  pkg "R-#{version}.pkg"

  uninstall pkgutil: [
                       'org.r-project*',
                       'org.R-project*',
                     ],
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
