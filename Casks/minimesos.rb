cask 'minimesos' do
  version '0.10.2'
  sha256 '58d05e2574e1c82b8f2f366f92d6dc464438603bd0fb5fb4b6383b6123233af0'

  # raw.githubusercontent.com was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/ContainerSolutions/minimesos/#{version}/bin/minimesos"
  name 'Minimesos'
  homepage 'https://minimesos.org/'
  license :apache

  depends_on arch: :x86_64
  container type: :naked

  binary 'minimesos', target: 'minimesos'

  postflight do
    set_permissions "#{staged_path}/minimesos", '0755'
  end
end
