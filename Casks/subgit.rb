cask 'subgit' do
  version '3.3.3'
  sha256 'bb16bc9a1b386511ef8b56c0b4e2934e6283375c39bf7ad99bc56d39c1c7e317'

  url "https://subgit.com/download/subgit-#{version}.zip"
  name 'SubGit'
  homepage 'https://subgit.com/'

  binary "subgit-#{version}/bin/subgit"

  caveats do
    depends_on_java '7+'
  end
end
