cask 'subgit' do
  version '3.3.1'
  sha256 '813ad35367279560885f7ffe32e708bd2019a577125b5b58a325b690b21ba5c5'

  url "https://subgit.com/download/subgit-#{version}.zip"
  name 'SubGit'
  homepage 'https://subgit.com/'

  binary "subgit-#{version}/bin/subgit"

  caveats do
    depends_on_java '7+'
  end
end
