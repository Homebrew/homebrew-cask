cask "r" do
  version "4.0.4"
  sha256 "7166d3dc0a034806e60dfc1de50c6e929536f89f184e78009020b30cc46c0ace"

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
