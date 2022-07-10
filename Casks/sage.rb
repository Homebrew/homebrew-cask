cask "sage" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "9.7,1.5"

  if Hardware::CPU.intel?
    sha256 "dd080b9e8cc9400387352d8e5edd09b224bdcdcc22c284c2171c8cef934e1fcd"
  else
    sha256 "a8a750c6e7a375f4b9169ee04793216278ce11508920f0a3490ee2693ce73d5a"
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
