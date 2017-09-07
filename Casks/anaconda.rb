cask 'anaconda' do
  version '4.4.0'
  sha256 '10fe58f09ae524df2548d17b8bb1e75db17da597a6ec10d695ce01387a2d7422'

  url "https://repo.continuum.io/archive/Anaconda3-#{version}-MacOSX-x86_64.sh"
  name 'Continuum Analytics Anaconda'
  homepage 'https://www.continuum.io/what-is-anaconda'

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

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.continuum.io.sfl',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.continuum.python.sfl',
              ]

  caveats do
    path_environment_variable "#{HOMEBREW_PREFIX}/anaconda3/bin"
    files_in_usr_local
  end
end
