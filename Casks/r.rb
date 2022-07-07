cask "r" do
  if MacOS.version <= :sierra
    version "3.6.3.nn"
    sha256 "f2b771e94915af0fe0a6f042bc7a04ebc84fb80cb01aad5b7b0341c4636336dd"
    url "https://cloud.r-project.org/bin/macosx/R-#{version}.pkg"
  elsif Hardware::CPU.intel?
    version "4.2.1"
    sha256 "972d1e514baa873e4cda238f18163230fcd44d507f4b89d98cf5409e08b16bf9"
    url "https://cloud.r-project.org/bin/macosx/base/R-#{version}.pkg"
  else
    version "4.2.1"
    sha256 "9a746270ef98bf038e3cbbc6e962fd3b7081786c49c59d37398261749ba5c693"
    url "https://cloud.r-project.org/bin/macosx/big-sur-arm64/base/R-#{version}-arm64.pkg"
  end

  name "R"
  desc "Environment for statistical computing and graphics"
  homepage "https://www.r-project.org/"

  livecheck do
    url "https://cloud.r-project.org/bin/macosx"
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
