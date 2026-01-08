cask "sage" do
  arch arm: "arm64", intel: "x86_64"

  version "10.8,2.8.3"
  sha256 arm:   "1e20329ebcf04d8700752d763886c81c8187e96785af9eb37faff0a7e96da6f6",
         intel: "7237f112d66b9be63cc55c91418fe789257ba3a31d42a29930d6b05483456197"

  url "https://github.com/3-manifolds/Sage_macOS/releases/download/v#{version.csv.second}/SageMath-#{version.csv.first}_#{arch}.dmg",
      verified: "github.com/3-manifolds/Sage_macOS/"
  name "Sage"
  desc "Mathematics software system"
  homepage "https://www.sagemath.org/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/SageMath[._-]v?(\d+(?:\.\d+)+)[._-].*?#{arch}\.dmg$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[2]},#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :big_sur"

  app "SageMath-#{version.csv.first.dots_to_hyphens}.app"
  pkg "Recommended_#{version.csv.first.dots_to_underscores}.pkg"

  uninstall quit:    [
              "com.tcltk.tcllibrary",
              "com.tcltk.tklibrary",
              "org.computop.sage",
              "org.computop.SageMath",
            ],
            pkgutil: [
              "org.computop.SageMath.#{version.csv.first.dots_to_underscores}.bin",
              "org.computop.SageMath.#{version.csv.first.dots_to_underscores}.share",
              "org.computop.SageMath.#{version.csv.first.dots_to_underscores}.texlive",
            ]

  zap trash: [
    "~/.sage",
    "~/Library/Application Support/SageMath",
    "~/Library/Preferences/SageMath.plist",
  ]
end
