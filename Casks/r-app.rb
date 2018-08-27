cask 'r-app' do
  version '3.5.1'
  sha256 '5f781220ff2f9374a4db114435fa2d22cfebc353ed8d5246a1f1e162eab75a01'

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
