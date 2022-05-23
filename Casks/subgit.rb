cask "subgit" do
  version "3.3.14"
  sha256 "cffa250b3b4041d102c8d81a2582626f393e675f013e4ecf7012cb8804244093"

  url "https://subgit.com/download/subgit-#{version}.zip"
  name "SubGit"
  desc "Convert SVN repositories to Git"
  homepage "https://subgit.com/"

  livecheck do
    url "https://subgit.com/download"
    regex(%r{/subgit[._-]?v?(\d+(?:\.\d+)+)\.zip}i)
  end

  binary "subgit-#{version}/bin/subgit"

  caveats do
    depends_on_java "7+"
  end
end
