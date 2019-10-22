cask 'subgit' do
  version '3.3.5'
  sha256 'c69be5e8724e5c7260e40586abdf42b79e025ac4bbdd5bf76e4cafab6e860a38'

  url "https://subgit.com/download/subgit-#{version}.zip"
  name 'SubGit'
  homepage 'https://subgit.com/'

  binary "subgit-#{version}/bin/subgit"

  caveats do
    depends_on_java '7+'
  end
end
