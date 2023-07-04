cask "r" do
  arch arm: "arm64", intel: "x86_64"
  folder = on_arch_conditional arm: "big-sur-arm64/"
  arch_legacy = on_arch_conditional arm: "-arm64"

  on_sierra :or_older do
    version "3.6.3.nn"
    sha256 "f2b771e94915af0fe0a6f042bc7a04ebc84fb80cb01aad5b7b0341c4636336dd"

    url "https://cloud.r-project.org/bin/macosx/R-#{version}.pkg"

    livecheck do
      skip "Legacy version"
    end

    pkg "R-#{version}.pkg"
  end
  on_high_sierra do
    version "4.2.3"
    sha256 arm:   "e61f25b529940e229b69c19e01428505d7f59cc1e1209ed41dca39452b56fb98",
           intel: "dd96e8dcae20cf3c9cde429dd29f252b87af69028a6a403ec867eb92bb8eb659"

    url "https://cloud.r-project.org/bin/macosx/#{folder}base/R-#{version}#{arch_legacy}.pkg"

    livecheck do
      skip "Legacy version"
    end

    pkg "R-#{version}#{arch_legacy}.pkg"
  end
  on_mojave do
    version "4.2.3"
    sha256 arm:   "e61f25b529940e229b69c19e01428505d7f59cc1e1209ed41dca39452b56fb98",
           intel: "dd96e8dcae20cf3c9cde429dd29f252b87af69028a6a403ec867eb92bb8eb659"

    url "https://cloud.r-project.org/bin/macosx/#{folder}base/R-#{version}#{arch_legacy}.pkg"

    livecheck do
      skip "Legacy version"
    end

    pkg "R-#{version}#{arch_legacy}.pkg"
  end
  on_catalina do
    version "4.2.3"
    sha256 arm:   "e61f25b529940e229b69c19e01428505d7f59cc1e1209ed41dca39452b56fb98",
           intel: "dd96e8dcae20cf3c9cde429dd29f252b87af69028a6a403ec867eb92bb8eb659"

    url "https://cloud.r-project.org/bin/macosx/#{folder}base/R-#{version}#{arch_legacy}.pkg"

    livecheck do
      skip "Legacy version"
    end

    pkg "R-#{version}#{arch_legacy}.pkg"
  end
  on_big_sur :or_newer do
    version "4.3.1"
    sha256 arm:   "6e048f45437a64c35961817aafe09bfb0a5956a85ff182469a0d5aa446bf0c64",
           intel: "b3665509b53208d7fac31d4d271955c2930e4670847aeda25ebd35c73e637265"

    url "https://cloud.r-project.org/bin/macosx/big-sur-#{arch}/base/R-#{version}-#{arch}.pkg"

    livecheck do
      url "https://cloud.r-project.org/bin/macosx"
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

  zap trash:  [
        "~/.R",
        "~/.Rapp.history",
        "~/.RData",
        "~/.Rhistory",
        "~/.Rprofile",
        "~/Library/R",
        "~/Library/Caches/org.R-project.R",
      ],
      delete: "/Library/Frameworks/R.Framework"

  caveats do
    files_in_usr_local
  end
end
