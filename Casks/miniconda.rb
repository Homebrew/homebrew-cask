cask 'miniconda' do
  version :latest
  sha256 :no_check

  # repo.continuum.io/miniconda was verified as official when first introduced to the cask
  url 'https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh'
  name 'Continuum Analytics Miniconda'
  homepage 'https://www.anaconda.com/what-is-anaconda/'

  auto_updates true
  depends_on macos: '>= :lion'
  container type: :naked

  installer script: {
                      executable: 'Miniconda3-latest-MacOSX-x86_64.sh',
                      args:       ['-b', '-p', "#{HOMEBREW_PREFIX}/miniconda3"],
                      sudo:       true,
                    }

  postflight do
    set_ownership "#{HOMEBREW_PREFIX}/miniconda3"
  end

  uninstall delete: "#{HOMEBREW_PREFIX}/miniconda3"

  caveats do
    path_environment_variable "#{HOMEBREW_PREFIX}/miniconda3/bin"
    files_in_usr_local
  end
end
