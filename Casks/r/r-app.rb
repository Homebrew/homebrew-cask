cask "r-app" do
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "a678b4db1fcd71b1b1cc58edcfa4a8d36ee012a02659dde9eab9366e93571157",
         intel: "aa9b1dba09cc69710571ad93efba26a9bcb5a0098543dadc4bb8e419a423195e"

  on_arm do
    version "4.6.2,sonoma"
  end
  on_intel do
    version "4.6.2,big-sur"
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
