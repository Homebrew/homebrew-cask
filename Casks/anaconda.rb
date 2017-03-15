cask 'anaconda' do
  version '4.3.0'
  sha256 'c53059b810c5e7a9a5ef9c46a7ed76675dfc7183f4ea867b4d81449cbd5a093d'

  url "https://repo.continuum.io/archive/Anaconda3-#{version}-MacOSX-x86_64.sh"
  name 'Continuum Analytics Anaconda'
  homepage 'https://www.continuum.io/why-anaconda'

  depends_on macos: '>= :lion'
  container type: :naked

  installer script: "Anaconda3-#{version}-MacOSX-x86_64.sh",
            args:   ['-b']

  uninstall delete: '~/anaconda3'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.continuum.io.sfl',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.continuum.python.sfl',
              ]

  caveats do
    path_environment_variable '~/anaconda3/bin'
  end
end
