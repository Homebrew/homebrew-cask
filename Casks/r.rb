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
    version "4.1.2"
    sha256 "86d169f9d62b2b2ddbf5fde55935fbb96729da5c47d7bf09240228cd23b664e5"
    url "https://cloud.r-project.org/bin/macosx/base/R-#{version}.pkg"
  else
    version "4.1.2"
    sha256 "247604393ec271cb3e72f42f2ffca9024de1b2d77fcba142c8ab866dc498ba21"
    url "https://cloud.r-project.org/bin/macosx/big-sur-arm64/base/R-#{version}-arm64.pkg"
  end

  name "R"
  desc "Environment for statistical computing and graphics"
  homepage "https://www.r-project.org/"

  livecheck do
    url "https://cloud.r-project.org/bin/macosx/"
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
