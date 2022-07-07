cask "sage" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "9.6,1.4.1"

  if Hardware::CPU.intel?
    sha256 "1f4418b5c000b756ad25ecea25a52e41cdc4fd1fb063e31a975398dfc93a1f85"
  else
    sha256 "6f62b2dd9ba383b6b184192dba7380610ddcc0b485ecdf7b6d9e05209cfed5fd"
  end

  url "https://github.com/3-manifolds/Sage_macOS/releases/download/v#{version.csv.second}/SageMath-#{version.csv.first}_#{arch}.dmg",
      verified: "github.com/3-manifolds/Sage_macOS/"
  name "Sage"
  desc "Mathematics software system"
  homepage "https://www.sagemath.org/"

  livecheck do
    url "https://github.com/3-manifolds/Sage_macOS/releases"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/v?(\d+(?:\.\d+)+)/SageMath[._-]v?(\d+(?:\.\d+)+)\+?[._-]#{arch}\.dmg}i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
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
