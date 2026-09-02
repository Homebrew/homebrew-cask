cask "r-app" do
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "67f6eea4ced4ce48f0a0d4fa3a1cac43d1859a05a88993ee3dff7c52e7edbc4b",
         intel: "612bb00cb4c627721d6d80b0f5224227c0fcdefb4a5b6c917511480361c16571"

  on_arm do
    version "4.6.1,sonoma"
  end
  on_intel do
    version "4.6.1,big-sur"
  end

  url "https://cloud.r-project.org/bin/macosx/#{version.csv.second}-#{arch}/base/R-#{version.csv.first}-#{arch}.pkg"
  name "R"
  desc "Environment for statistical computing and graphics"
  homepage "https://www.r-project.org/"

  livecheck do
    url "https://cloud.r-project.org/bin/macosx/"
    regex(%r{href=["'].*?/?([^/]+)[._-]#{arch}/base/R[._-]v?(\d+(?:\.\d+)*)(?:[._-]#{arch})?\.pkg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on :macos

  pkg "R-#{version.csv.first}-#{arch}.pkg"

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
