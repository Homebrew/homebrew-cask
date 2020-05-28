cask 'miniconda' do
  version 'py37_4.8.2'
  sha256 'd1fca4f74f9971c27220122723843f6c879a5d13ff59c01fca17ef62a1576732'

  # repo.anaconda.com/miniconda/ was verified as official when first introduced to the cask
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
