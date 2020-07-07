cask 'miniconda' do
  version 'py37_4.8.3'
  sha256 'ccc1bded923a790cd61cd17c83c3dcc374dc0415cfa7fb1f71e6a2438236543d'

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
