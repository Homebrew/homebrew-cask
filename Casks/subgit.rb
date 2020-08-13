cask "subgit" do
  version "3.3.9"
  sha256 "65039f787790e9eff7ee5802c2d6fb884dfabb32d9ab60d6882cdf5afd148d37"

  url "https://subgit.com/download/subgit-#{version}.zip"
  name "SubGit"
  homepage "https://subgit.com/"

  binary "subgit-#{version}/bin/subgit"

  caveats do
    depends_on_java "7+"
  end
end
