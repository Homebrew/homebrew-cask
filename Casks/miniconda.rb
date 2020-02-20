cask 'miniconda' do
  version '4.7.12'
  sha256 'a879d93f42bdc796a4b975a11d109dfacc11a7ba6c4106aedf657d5e1fd79410'

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
