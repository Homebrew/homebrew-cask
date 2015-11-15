cask :v1_1 => 'anaconda2' do
  version '2.4.0'
  sha256 '53c9123c9d508555100805fdb44d9845511c937e7a34f237beb19168d655e070'

  url "https://repo.continuum.io/archive/Anaconda2-#{version}-MacOSX-x86_64.sh"
  name 'Anaconda2'
  homepage 'https://www.continuum.io/why-anaconda'
  license :gratis
  tags :vendor => 'Continuum Analytics'

  container :type => :naked

  preflight do
    set_permissions "#{staged_path}/Anaconda2-#{version}-MacOSX-x86_64.sh", '+x'
  end

  installer :script => "Anaconda2-#{version}-MacOSX-x86_64.sh",
            :args => [ '-b' ],
            :sudo => false

  uninstall :delete => '~/anaconda2'

  caveats do
    path_environment_variable '~/anaconda2/bin'
  end

  depends_on :macos => '>= :lion'
end
