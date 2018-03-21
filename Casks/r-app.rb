cask 'r-app' do
  version '3.4.4'
  sha256 'afa75787f21601efc82947ce094681f67ff69a4fc668bc2b8331a1c69cceef3c'

  url "https://cloud.r-project.org/bin/macosx/R-#{version}.pkg"
  appcast 'https://www.r-project.org/',
          checkpoint: 'b206f01fb8821dd7a9b368310e345bace49176974c5d025657cd0c481bab9393'
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
