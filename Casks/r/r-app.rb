cask "r-app" do
  arch arm: "arm64", intel: "x86_64"

  on_catalina :or_older do
    version "4.2.3"
    sha256 "dd96e8dcae20cf3c9cde429dd29f252b87af69028a6a403ec867eb92bb8eb659"

    url "https://cloud.r-project.org/bin/macosx/base/R-#{version}.pkg"

    livecheck do
      skip "Legacy version"
    end

    pkg "R-#{version}.pkg"
  end
  on_big_sur :or_newer do
    sha256 arm:   "549f9a06d9816b515fa1adff13c4aefd64a27887bb888caa6279b61059e757da",
           intel: "995ce5d5282ce4aee22ca4484d9674d75d6e3752b626ad5f1fc62ce04bc27b50"

    on_arm do
      version "4.6.0,sonoma"
    end
    on_intel do
      version "4.6.0,big-sur"
    end

    url "https://cloud.r-project.org/bin/macosx/#{version.csv.second}-#{arch}/base/R-#{version.csv.first}-#{arch}.pkg"

    livecheck do
      url "https://cloud.r-project.org/bin/macosx/"
      regex(%r{href=["'].*?/?([^/]+)[._-]#{arch}/base/R[._-]v?(\d+(?:\.\d+)*)(?:[._-]#{arch})?\.pkg}i)
      strategy :page_match do |page, regex|
        page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
      end
    end

    pkg "R-#{version.csv.first}-#{arch}.pkg"
  end

  name "R"
  desc "Environment for statistical computing and graphics"
  homepage "https://www.r-project.org/"

  depends_on :macos

  uninstall pkgutil: [
              "org.r-project*",
              "org.R-project*",
            ],
            delete:  [
              "/usr/bin/R",
              "/usr/bin/Rscript",
            ]

  zap delete: "/Library/Frameworks/R.Framework",
      trash:  [
        "~/.R",
        "~/.Rapp.history",
        "~/.RData",
        "~/.Rhistory",
        "~/.Rprofile",
        "~/Library/Caches/org.R-project.R",
        "~/Library/R",
      ]

  caveats do
    files_in_usr_local
  end
end
