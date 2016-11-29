cask 'anaconda' do
  version '4.2.0'
  sha256 '95448921601e1952e01a17ba9767cd3621c154af7fc52dd6b7f57d462155a358'

  url "https://repo.continuum.io/archive/Anaconda3-#{version}-MacOSX-x86_64.sh"
  name 'Continuum Analytics Anaconda'
  homepage 'https://www.continuum.io/why-anaconda'

  depends_on macos: '>= :lion'
  container type: :naked

  installer script: "Anaconda3-#{version}-MacOSX-x86_64.sh",
            args:   ['-b'],
            sudo:   false

  uninstall delete: '~/anaconda3'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.continuum.io.sfl',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.continuum.python.sfl',
              ]

  caveats do
    path_environment_variable '~/anaconda3/bin'
  end
end
