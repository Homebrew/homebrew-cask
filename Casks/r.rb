cask "r" do
  if MacOS.version <= :yosemite
    version "3.3.3"
    sha245 "77d7a145d1f7d5c3f5bd7310ae2beb7349118528d938e519845ce7d205b4c864"
    url "https://cloud.r-project.org/bin/macosx/R-#{version}.pkg"
  elsif MacOS.version <= :sierra
    version "3.6.3.nn"
    sha256 "f2b771e94915af0fe0a6f042bc7a04ebc84fb80cb01aad5b7b0341c4636336dd"
    url "https://cloud.r-project.org/bin/macosx/R-#{version}.pkg"
  elsif Hardware::CPU.intel?
    version "4.1.1"
    sha256 "c239e97c3659169447c50474827d9af79176fff67a34249fcd413d8da6ef2414"
    url "https://cloud.r-project.org/bin/macosx/base/R-#{version}.pkg"
  else
    version "4.1.1"
    sha256 "cc078658708fdc7ae807f927cf5b3a96d17d287717679b3327540030f625d47b"
    url "https://cloud.r-project.org/bin/macosx/big-sur-arm64/base/R-#{version}-arm64.pkg"
  end

  name "R"
  desc "Environment for statistical computing and graphics"
  homepage "https://www.r-project.org/"

  livecheck do
    url "https://cloud.r-project.org/bin/macosx/"
    strategy :page_match
    regex(/href=.*?R-(\d+(?:\.\d+)*)\.pkg/i)
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
