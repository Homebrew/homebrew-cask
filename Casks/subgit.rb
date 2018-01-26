cask 'subgit' do
  version '3.2.7'
  sha256 '1524573a3cae510bae7f81f09742cc9ee7d5a75c2c5f4fb427c75e60c7c73e8c'

  url "https://subgit.com/download/subgit-#{version}.zip"
  name 'SubGit'
  homepage 'https://subgit.com/'

  binary "subgit-#{version}/bin/subgit"

  caveats do
    depends_on_java('7+')
  end
end
