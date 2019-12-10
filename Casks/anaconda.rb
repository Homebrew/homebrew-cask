cask 'anaconda' do
  version '2019.10'
  sha256 '4f77299ff4170cda64fdfcc27ac609a37d654c158f36c9ff25048793fe8a3a49'

  url "https://repo.anaconda.com/archive/Anaconda3-#{version}-MacOSX-x86_64.sh"
  name 'Continuum Analytics Anaconda'
  homepage 'https://www.anaconda.com/'

  auto_updates true
  container type: :naked

  installer script: {
                      executable: "Anaconda3-#{version}-MacOSX-x86_64.sh",
                      args:       ['-b', '-p', "#{HOMEBREW_PREFIX}/anaconda3"],
                      sudo:       true,
                    }

  postflight do
    set_ownership "#{HOMEBREW_PREFIX}/anaconda3"
  end

  uninstall delete: [
                      "#{HOMEBREW_PREFIX}/anaconda3",
                      '/Applications/Anaconda-Navigator.app',
                    ]

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.continuum.io.sfl*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.continuum.python.sfl*',
               '~/.anaconda',
               '~/.conda',
               '~/.condarc',
             ]

  caveats do
    files_in_usr_local
  end
end
