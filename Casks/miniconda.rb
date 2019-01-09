cask 'miniconda' do
  version '4.5.12'
  sha256 '8ebb463ddf46dd003616b2f6b678403a708e2c54dcc58e212bd35e257761912c'

  # repo.anaconda.com/miniconda was verified as official when first introduced to the cask
  url "https://repo.anaconda.com/miniconda/Miniconda3-#{version}-MacOSX-x86_64.sh"
  name 'Continuum Analytics Miniconda'
  homepage 'https://conda.io/miniconda.html'

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

  zap trash: [
               '~/.condarc',
               '~/.conda',
               '~/.continuum',
             ]

  caveats do
    files_in_usr_local
  end
end
