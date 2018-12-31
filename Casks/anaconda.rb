cask 'anaconda' do
  version '2018.12'
  sha256 '4ccd3944d994fd47e5701c341725a63e984f8c042bf4dc19c9dfc7c135e7d8e4'

  url "https://repo.anaconda.com/archive/Anaconda3-#{version}-MacOSX-x86_64.sh"
  name 'Continuum Analytics Anaconda'
  homepage 'https://www.anaconda.com/'

  depends_on macos: '>= :lion'
  container type: :naked

  installer script: {
                      executable: "Anaconda3-#{version}-MacOSX-x86_64.sh",
                      args:       ['-b', '-p', "#{HOMEBREW_PREFIX}/anaconda3"],
                      sudo:       true,
                    }

  postflight do
    set_ownership "#{HOMEBREW_PREFIX}/anaconda3"
  end

  uninstall delete: [
                      "#{HOMEBREW_PREFIX}/anaconda3",
                      '/Applications/Anaconda-Navigator.app',
                    ]

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.continuum.io.sfl*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.continuum.python.sfl*',
               '~/.anaconda',
               '~/.conda',
               '~/.condarc',
             ]

  caveats do
    files_in_usr_local

    <<~EOS
      If your shell is Bash or a Bourne variant, enable conda for the current user with

        $ echo ". #{HOMEBREW_PREFIX}/anaconda3/etc/profile.d/conda.sh" >> ~/.bash_profile

      or, for all users, enable conda with

        $ sudo ln -s #{HOMEBREW_PREFIX}/anaconda3/etc/profile.d/conda.sh /etc/profile.d/conda.sh

      The options above will permanently enable the 'conda' command, but they do NOT
      put conda's base (root) environment on PATH.  To do so, run

        $ conda activate

      in your terminal, or to put the base environment on PATH permanently, run

        $ echo "conda activate" >> ~/.bash_profile

      Previous to conda 4.4, the recommended way to activate conda was to modify PATH in
      your ~/.bash_profile file.  You should manually remove the line that looks like

        export PATH="#{HOMEBREW_PREFIX}/anaconda3/bin:$PATH"

      ^^^ The above line should NO LONGER be in your ~/.bash_profile file! ^^^
    EOS
  end
end
