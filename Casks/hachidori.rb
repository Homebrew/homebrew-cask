cask 'hachidori' do
  version '1.1.7.1'
  sha256 '28da36312ade8d1e4369d4229c9b319c274259b50987644b48c2c164f711c2c7'

  # github.com releases are linked to from the homepage, they are used directly to allow https usage
  url "https://github.com/chikorita157/hachidori/releases/download/#{version}/Hachidori-#{version}.zip"
  name 'Hachidori'
  homepage 'http://hachidori.ateliershiori.moe'
  license :bsd

  app 'Hachidori.app'
end
