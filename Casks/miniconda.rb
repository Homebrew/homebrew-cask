cask 'miniconda' do
  version '4.7.10'
  sha256 'c8b31ea37b0b6a3e2fb19990ef895ab5cf1c095f8e9138defac95ee88e70920d'

  # repo.anaconda.com/miniconda was verified as official when first introduced to the cask
  url "https://repo.anaconda.com/miniconda/Miniconda3-#{version}-MacOSX-x86_64.sh"
  name 'Continuum Analytics Miniconda'
  homepage 'https://conda.io/miniconda.html'

  auto_updates true
  container type: :naked

  installer script: {
                      executable: "Miniconda3-#{version}-MacOSX-x86_64.sh",
                      args:       ['-b', '-p', "#{caskroom_path}/base"],
                    }
  binary "#{caskroom_path}/base/condabin/conda"

  uninstall delete: "#{caskroom_path}/base"

  zap trash: [
               '~/.condarc',
               '~/.conda',
               '~/.continuum',
             ]

  caveats <<~EOS
    Please run the following to setup your shell:

      conda init "$(basename "${SHELL}")"
  EOS
end
