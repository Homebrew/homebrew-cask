cask 'anaconda' do
  version '4.3.1'
  sha256 'a42267203e207cb5e0f539e0d879ead12e436311825c7114d0edd880d001b539'

  url "https://repo.continuum.io/archive/Anaconda3-#{version}-MacOSX-x86_64.sh"
  name 'Continuum Analytics Anaconda'
  homepage 'https://www.continuum.io/why-anaconda'

  depends_on macos: '>= :lion'
  container type: :naked

  installer script: {
                      executable: "Anaconda3-#{version}-MacOSX-x86_64.sh",
                      args:       ['-b', '-p/usr/local/anaconda3'],
                      sudo:       true,
                    }

  uninstall delete: '/usr/local/anaconda3'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.continuum.io.sfl',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.continuum.python.sfl',
              ]

  caveats do
    path_environment_variable '/usr/local/anaconda3/bin'
    files_in_usr_local
  end
end
