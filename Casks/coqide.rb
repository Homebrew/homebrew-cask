cask :v1 => 'coqide' do
  version '8.4pl5'
  sha256 'ebcb0ef2b5abd659373b3c039de0abd7712ef6ee7901936d5f7962735a59e135'

  url "https://coq.inria.fr/distrib/V#{version}/files/coqide-#{version}.dmg"
  homepage 'https://coq.inria.fr/'
  license :oss

  app "CoqIde_#{version}.app"
end
