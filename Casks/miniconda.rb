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

    <<~EOS
      If your shell is Bash or a Bourne variant, enable conda for the current user with

        $ echo ". #{HOMEBREW_PREFIX}/miniconda3/etc/profile.d/conda.sh" >> ~/.bash_profile

      or, for all users, enable conda with

        $ sudo ln -s #{HOMEBREW_PREFIX}/miniconda3/etc/profile.d/conda.sh /etc/profile.d/conda.sh

      The options above will permanently enable the 'conda' command, but they do NOT
      put conda's base (root) environment on PATH.  To do so, run

        $ conda activate

      in your terminal, or to put the base environment on PATH permanently, run

        $ echo "conda activate" >> ~/.bash_profile

      Previous to conda 4.4, the recommended way to activate conda was to modify PATH in
      your ~/.bash_profile file.  You should manually remove the line that looks like

        export PATH="#{HOMEBREW_PREFIX}/miniconda3/bin:$PATH"

      ^^^ The above line should NO LONGER be in your ~/.bash_profile file! ^^^
    EOS
  end
end
