cask :v1 => 'keeping-you-awake' do
  version '1.2beta1'
  sha256 'b7907bfacf6408492fd47599afc005b91db2839f373f967176e3d79c7b50bb38'

  url 'https://github.com/newmarcel/KeepingYouAwake/releases/download/1.2beta1/KeepingYouAwake-1.2beta1.zip'
  homepage 'https://github.com/newmarcel/KeepingYouAwake'
  license :mit

  app 'KeepingYouAwake.app'
end
