cask "subgit" do
  version "3.3.16"
  sha256 "a7bb81106e373781de77ef0761fdc8f65404be660b57ad6823246b3c7b869940"

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
