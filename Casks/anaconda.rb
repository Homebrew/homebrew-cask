cask 'anaconda' do
  version '2.4.1'
  sha256 '22a3267638da9b7d64210d7da90d8762da7948234c21c0010a74f2621ee0ef68'

  url "https://repo.continuum.io/archive/Anaconda3-#{version}-MacOSX-x86_64.sh"
  name 'Anaconda'
  homepage 'https://www.continuum.io/why-anaconda'
  license :gratis
  tags :vendor => 'Continuum Analytics'

  container :type => :naked

  preflight do
    set_permissions "#{staged_path}/Anaconda3-#{version}-MacOSX-x86_64.sh", '+x'
  end

  installer :script => "Anaconda3-#{version}-MacOSX-x86_64.sh",
            :args => [ '-b' ],
            :sudo => false

  uninstall :delete => '~/anaconda3'

  caveats do
    path_environment_variable '~/anaconda3/bin'
  end

  depends_on :macos => '>= :lion'
end
