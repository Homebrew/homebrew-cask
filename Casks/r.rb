cask "r" do
  arch arm: "-arm64"
  folder = on_arch_conditional arm: "big-sur-arm64/base/", intel: "base/"

  on_sierra :or_older do
    version "3.6.3.nn"
    sha256 "f2b771e94915af0fe0a6f042bc7a04ebc84fb80cb01aad5b7b0341c4636336dd"

    url "https://cloud.r-project.org/bin/macosx/R-#{version}.pkg"
  end
  on_high_sierra :or_newer do
    version "4.2.3"
    sha256 arm:   "e61f25b529940e229b69c19e01428505d7f59cc1e1209ed41dca39452b56fb98",
           intel: "dd96e8dcae20cf3c9cde429dd29f252b87af69028a6a403ec867eb92bb8eb659"

    url "https://cloud.r-project.org/bin/macosx/#{folder}R-#{version}#{arch}.pkg"
  end

  name "R"
  desc "Environment for statistical computing and graphics"
  homepage "https://www.r-project.org/"

  livecheck do
    url "https://cloud.r-project.org/bin/macosx"
    regex(/href=.*?R[._-]v?(\d+(?:\.\d+)*)\.pkg/i)
  end

  depends_on macos: ">= :el_capitan"

  pkg "R-#{version}#{arch}.pkg"

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
