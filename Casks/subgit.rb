cask "subgit" do
  version "3.3.12"
  sha256 "31d8e6eeb905fe2c371c17ed0a05eb6c5086d3483f468c05705fe878a2f2ccbd"

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
