cask "r" do
  if MacOS.version <= :yosemite
    version "3.3.3"
    sha256 "77d7a145d1f7d5c3f5bd7310ae2beb7349118528d938e519845ce7d205b4c864"
    url "https://cloud.r-project.org/bin/macosx/R-#{version}.pkg"
  elsif MacOS.version <= :sierra
    version "3.6.3.nn"
    sha256 "f2b771e94915af0fe0a6f042bc7a04ebc84fb80cb01aad5b7b0341c4636336dd"
    url "https://cloud.r-project.org/bin/macosx/R-#{version}.pkg"
  elsif Hardware::CPU.intel?
    version "4.2.0"
    sha256 "8d1f1f51d04bdf89974f6e3aea7bf178f6db79f3d41d175c2375fa7bcbfef19d"
    url "https://cloud.r-project.org/bin/macosx/base/R-#{version}.pkg"
  else
    version "4.2.0"
    sha256 "e7967f60f39be65dd62d741553bcd70d107f1c00b1ef3b4b4e59714cfc1182f2"
    url "https://cloud.r-project.org/bin/macosx/big-sur-arm64/base/R-#{version}-arm64.pkg"
  end

  name "R"
  desc "Environment for statistical computing and graphics"
  homepage "https://www.r-project.org/"

  livecheck do
    url "https://cloud.r-project.org/bin/macosx/base"
    regex(/href=.*?R[._-]v?(\d+(?:\.\d+)*)\.pkg/i)
  end

  depends_on macos: ">= :el_capitan"

  if Hardware::CPU.intel?
    pkg "R-#{version}.pkg"
  else
    pkg "R-#{version}-arm64.pkg"
  end

  uninstall pkgutil: [
    "org.r-project*",
    "org.R-project*",
  ],
            delete:  [
              "/Library/Frameworks/R.Framework",
              "/usr/bin/R",
              "/usr/bin/Rscript",
            ]

  zap trash: [
    "~/.R",
    "~/.Rapp.history",
    "~/.RData",
    "~/.Rhistory",
    "~/.Rprofile",
    "~/Library/R",
    "~/Library/Caches/org.R-project.R",
  ]

  caveats do
    files_in_usr_local
  end
end
