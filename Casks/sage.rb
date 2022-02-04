cask "sage" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "9.5,1.3"

  if Hardware::CPU.intel?
    sha256 "21606aa7476b70a01de6594e37d74625436ac6307ccafe19ff1146d2315189fd"
  else
    sha256 "4640428a7b41b829a1a18d6f5ecf9d22d2ae12c50d4b791fcebb532a369d70e0"
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
