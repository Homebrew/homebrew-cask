cask 'subgit' do
  version '3.2.6'
  sha256 '18e14d7901a23e7ab506e61a7607a1d72d01cbc0e496df2f87d7de7c6fe4a54c'

  url "https://subgit.com/download/subgit-#{version}.zip"
  name 'SubGit'
  homepage 'https://subgit.com/'

  binary "subgit-#{version}/bin/subgit"

  caveats do
    depends_on_java('7+')
  end
end
