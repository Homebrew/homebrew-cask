cask "sage" do
  arch arm: "arm64", intel: "x86_64"

  version "10.2,2.2.0"
  sha256 arm:   "90565c3b7ca2db91fab8b07f811ddbaed64f474f2d79c24e654559c2660e8b0d",
         intel: "6993244bf3c50ffe3fec322c6e52932f8d6595535e42c7b671f4daa28cf7363d"

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

  depends_on macos: ">= :high_sierra"

  app "SageMath-#{version.csv.first.dots_to_hyphens}.app"
  pkg "Recommended_#{version.csv.first.dots_to_underscores}.pkg"

  uninstall quit:    [
              "org.computop.sage",
              "org.computop.SageMath",
              "com.tcltk.tcllibrary",
              "com.tcltk.tklibrary",
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
