cask "subgit" do
  version "3.3.17"
  sha256 "bbc621685e333a50e911877fd1550df24e17f04d46e0f07e52426305f40a9096"

  url "https://subgit.com/download/subgit-#{version}.zip"
  name "SubGit"
  desc "Convert SVN repositories to Git"
  homepage "https://subgit.com/"

  livecheck do
    url "https://subgit.com/download"
    regex(%r{/subgit[._-]?v?(\d+(?:\.\d+)+)\.zip}i)
  end

  binary "subgit-#{version}/bin/subgit"

  zap trash: "~/.subgit"

  caveats do
    depends_on_java "7+"
  end
end
