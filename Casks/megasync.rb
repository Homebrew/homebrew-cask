cask :v1 => 'megasync' do
  version :latest
  sha256 :no_check

  url 'https://mega.nz/MEGAsyncSetup.dmg'
  name 'MEGAsync'
  homepage 'https://mega.co.nz'
  license :gratis

  app 'MEGAsync.app'

  caveats do
    <<-EOS.undent
      #{token} only works if called from /Applications, so you may need to install it with
        brew cask --appdir=/Applications install #{token}

      Alternatively, you can create an extra link in /Applications, after installing
        ln -s '#{staged_path}/MEGAsync.app' '/Applications/MEGAsync.app'
    EOS
  end
end
