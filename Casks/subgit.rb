cask 'subgit' do
  version '3.2.3'
  sha256 '61c1e65bf91a48b3532549f33099ef057e38b773e35c38814b4fd4f0c2b0fc42'

  url "https://subgit.com/download/subgit-#{version}.zip"
  name 'SubGit'
  homepage 'https://subgit.com/'

  binary "subgit-#{version}/bin/subgit"

  caveats do
    depends_on_java('7+')
  end
end
