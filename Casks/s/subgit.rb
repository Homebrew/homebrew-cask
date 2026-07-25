cask "subgit" do
  version "3.3.18"
  sha256 "bb89606d7eb66e182fff8d7d89ffa3ca409592e379489e0e061a85d8d97d41ee"

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
