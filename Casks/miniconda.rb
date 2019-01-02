cask 'miniconda' do
  version '4.5.11'
  sha256 'eb87312ae5b8cd33d6c9fe66a454dc46fbb4d5fd133683a4a483546b9c05ea6e'

  # repo.anaconda.com/miniconda was verified as official when first introduced to the cask
  url "https://repo.anaconda.com/miniconda/Miniconda3-#{version}-MacOSX-x86_64.sh"
  name 'Continuum Analytics Miniconda'
  homepage 'https://conda.io/miniconda.html'

  depends_on macos: '>= :lion'
  container type: :naked

  installer script: {
                      executable: "Miniconda3-#{version}-MacOSX-x86_64.sh",
                      args:       ['-b', '-p', "#{HOMEBREW_PREFIX}/miniconda3"],
                      sudo:       true,
                    }

  postflight do
    set_ownership "#{HOMEBREW_PREFIX}/miniconda3"
  end

  uninstall delete: "#{HOMEBREW_PREFIX}/miniconda3"

  caveats do
    files_in_usr_local
  end
end
