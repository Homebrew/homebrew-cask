cask :v1 => 'm3unify' do
  version :latest
  sha256 :no_check

  url 'http://dougscripts.com/itunes/scrx/m3unifyml.zip'
  homepage 'http://dougscripts.com/itunes/itinfo/m3unify.php'
  license :commercial

  app 'M3Unify.app'
end
