cask :v1 => 'anaconda' do
  version '2.3.0'
  sha256 'c4bb59a57bf44dde80612041bbbcfd2e5cab8534842209ef456da7a46f919c33'

  url "https://repo.continuum.io/archive/Anaconda-#{version}-MacOSX-x86_64.sh"
  name 'Anaconda'
  homepage 'https://store.continuum.io/cshop/anaconda/'
  license :gratis
  tags :vendor => 'Continuum Analytics'

  container :type => :naked

  preflight do
    system '/bin/chmod', '--', '755', "#{staged_path}/Anaconda-#{version}-MacOSX-x86_64.sh"
  end

  installer :script => "Anaconda-#{version}-MacOSX-x86_64.sh",
            :args => [ '-b' ],
            :sudo => false

  uninstall :delete => '~/anaconda'

  caveats do
    path_environment_variable '~/anaconda/bin'
  end

  depends_on :macos => '>= :lion'
end
