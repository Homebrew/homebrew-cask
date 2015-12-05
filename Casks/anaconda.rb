cask :v1_1 => 'anaconda' do
  version '2.4.0'
  sha256 '6d41e4cace78d9ed3cc4151898236ee8688cf8135cffd21de4727199c96c4737'

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
