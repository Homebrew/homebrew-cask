cask "r" do
  version "4.0.5"
  sha256 "0143dd1b17dd5d8bccb9e13d361f69c2dd69e1c8289e3fb0271daef1615c57bd"

  url "https://cloud.r-project.org/bin/macosx/R-#{version}.pkg"
  name "R"
  desc "Environment for statistical computing and graphics"
  homepage "https://www.r-project.org/"

  livecheck do
    url "https://cloud.r-project.org/bin/macosx/"
    strategy :page_match
    regex(/href=.*?R-(\d+(?:\.\d+)*)\.pkg/i)
  end

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
