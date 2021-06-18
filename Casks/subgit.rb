cask "subgit" do
  version "3.3.11"
  sha256 "96d4e99973c22064e6543c4a73aa1e94c1334165d16c87f43444b346e81a5e8d"

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
