cask 'anaconda' do
  version '5.3.1'
  sha256 '23c373abce2463d4df495f5a1c7e8b0faec6eda09542d98f41ed65a0fa0dbde0'

  url "https://repo.anaconda.com/archive/Anaconda3-#{version}-MacOSX-x86_64.sh"
  name 'Continuum Analytics Anaconda'
  homepage 'https://www.anaconda.com/'

  depends_on macos: '>= :lion'
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
    path_environment_variable "#{HOMEBREW_PREFIX}/anaconda3/bin"
    files_in_usr_local
  end
end
