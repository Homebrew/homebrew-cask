cask "r" do
  arch arm: "arm64", intel: "x86_64"

  on_catalina :or_older do
    on_sierra :or_older do
      version "3.6.3.nn"
      sha256 "f2b771e94915af0fe0a6f042bc7a04ebc84fb80cb01aad5b7b0341c4636336dd"

      url "https://cran-archive.r-project.org/bin/macosx/base/R-#{version}.pkg"
    end
    on_high_sierra :or_newer do
      version "4.2.3"
      sha256 "dd96e8dcae20cf3c9cde429dd29f252b87af69028a6a403ec867eb92bb8eb659"

      url "https://cloud.r-project.org/bin/macosx/base/R-#{version}.pkg"
    end

    livecheck do
      skip "Legacy version"
    end

    pkg "R-#{version}.pkg"
  end
  on_big_sur :or_newer do
    version "4.5.0"
    sha256 arm:   "c54ef1ac6ae0eb0e71e984707f75bde1806eb64dd506851c861935cc449ad5ca",
           intel: "8b358faae24e9bc0035b88d6dcada8be9ad481e0163b692890d585ef9d0d465c"

    url "https://cloud.r-project.org/bin/macosx/big-sur-#{arch}/base/R-#{version}-#{arch}.pkg"

    livecheck do
      url "https://cloud.r-project.org/bin/macosx/"
      regex(/href=.*?R[._-]v?(\d+(?:\.\d+)*)([._-]#{arch})?\.pkg/i)
    end

    pkg "R-#{version}-#{arch}.pkg"
  end

  name "R"
  desc "Environment for statistical computing and graphics"
  homepage "https://www.r-project.org/"

  depends_on macos: ">= :el_capitan"

  uninstall pkgutil: [
              "org.r-project*",
              "org.R-project*",
            ],
            delete:  [
              "/usr/bin/R",
              "/usr/bin/Rscript",
            ]

  zap delete: "/Library/Frameworks/R.Framework",
      trash:  [
        "~/.R",
        "~/.Rapp.history",
        "~/.RData",
        "~/.Rhistory",
        "~/.Rprofile",
        "~/Library/Caches/org.R-project.R",
        "~/Library/R",
      ]

  caveats do
    files_in_usr_local
  end
end
