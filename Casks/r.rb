cask "r" do
  version "4.0.3"
  sha256 "0b29a47984bd95cf726e556933f2d87b2ca720f816e3d435c23630e08ac1e125"

  url "https://cloud.r-project.org/bin/macosx/R-#{version}.pkg"
  appcast "https://cloud.r-project.org/bin/macosx/"
  name "R"
  desc "Environment for statistical computing and graphics"
  homepage "https://www.r-project.org/"

  depends_on macos: ">= :el_capitan"

  pkg "R-#{version}.pkg"

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
