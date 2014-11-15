cask :v1 => 'aquamacs' do

  if Hardware::CPU.is_32_bit?
    version '2.5'
    sha256 '5857848d8d46bba43d160c02393b098a370e2156608be24b288419f668210be9'

    url "http://braeburn.aquamacs.org/releases/Aquamacs-Emacs-#{version}.dmg"
  else
    version '3.1'
    sha256 '0d918da021d70d5ece6e05234ef47425238fef84a1900ae07409f95b8b224066'

    url "https://github.com/davidswelt/aquamacs-emacs/releases/download/Aquamacs-#{version}/Aquamacs-Emacs-#{version}.dmg"
  end

  homepage 'http://aquamacs.org/'
  license :oss

  app 'Aquamacs.app'

  zap :delete => '~/Library/Caches/Aquamacs Emacs'
end
