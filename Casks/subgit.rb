cask 'subgit' do
  version '3.2.4'
  sha256 '5c2a880c277b2c3250c726302f76a49c7e3d0b62ceaa13e4d0cb90f94584268f'

  url "https://subgit.com/download/subgit-#{version}.zip"
  name 'SubGit'
  homepage 'https://subgit.com/'

  binary "subgit-#{version}/bin/subgit"

  caveats do
    depends_on_java('7+')
  end
end
