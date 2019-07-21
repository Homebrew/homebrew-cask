cask 'miniconda' do
  version '4.6.14'
  sha256 '2ec958508139289df3b5e2c10257311af4f0ebf39242f61d39f11e7fa14ebb40'

  # repo.anaconda.com/miniconda was verified as official when first introduced to the cask
  url "https://repo.anaconda.com/miniconda/Miniconda3-#{version}-MacOSX-x86_64.sh"
  name 'Continuum Analytics Miniconda'
  homepage 'https://conda.io/miniconda.html'

  auto_updates true
  container type: :naked

  installer script: {
                      executable: "Miniconda3-#{version}-MacOSX-x86_64.sh",
                      args:       ['-b', '-p', "#{staged_path}/miniconda3"],
                    }
  binary 'miniconda3/condabin/conda'

  uninstall delete: "#{staged_path}/miniconda3"

  zap trash: [
               '~/.condarc',
               '~/.conda',
               '~/.continuum',
             ]
end
