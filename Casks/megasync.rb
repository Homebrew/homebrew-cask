cask 'megasync' do
  version :latest
  sha256 :no_check

  url 'https://mega.nz/MEGAsyncSetup.dmg'
  name 'MEGAsync'
  homepage 'https://mega.nz'
  license :oss

  app 'MEGAsync.app'

  caveats do
    <<-EOS.undent
      #{token} only works if called from /Applications, so you may need to install it with
        brew cask install --appdir=/Applications #{token}

      Alternatively, you can create an extra link in /Applications, after installing
        ln -s '#{staged_path}/MEGAsync.app' '/Applications/MEGAsync.app'
    EOS
  end
end
