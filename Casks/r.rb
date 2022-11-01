cask "r" do
  arch arm: "-arm64"
  folder = on_arch_conditional arm: "big-sur-arm64/base/", intel: "base/"

  version "4.2.2"
  sha256 arm:   "a0fa5cdd3d3e14e0420d9605b5bfbad80267d1805c1f5a92672c157337d739c1",
         intel: "df8db457fcc8aafbe1b084f87ec9fa8763fbcf909f9a252d05c28eb4c2aff0ff"

  url "https://cloud.r-project.org/bin/macosx/#{folder}R-#{version}#{arch}.pkg"

  on_sierra :or_older do
    version "3.6.3.nn"
    sha256 "f2b771e94915af0fe0a6f042bc7a04ebc84fb80cb01aad5b7b0341c4636336dd"

    url "https://cloud.r-project.org/bin/macosx/R-#{version}.pkg"
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
