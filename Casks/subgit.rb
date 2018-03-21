cask 'subgit' do
  version '3.3.0'
  sha256 'e69e4f6b41474533099cd2462ed64134e33a8640c8d5d02b26e362e8a191a355'

  url "https://subgit.com/download/subgit-#{version}.zip"
  name 'SubGit'
  homepage 'https://subgit.com/'

  binary "subgit-#{version}/bin/subgit"

  caveats do
    depends_on_java('7+')
  end
end
