cask "sage" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "9.5,1.3"

  if Hardware::CPU.intel?
    sha256 "73d9fd535a690c1fdcc9099edbb7f9e9b8897e30573c0be95360e6896804c203"
  else
    sha256 "43004172febad37c804ec7f64b2e2113751500190d44fbf935604a13729edfca"
  end

  url "https://github.com/3-manifolds/Sage_macOS/releases/download/v#{version.csv.second}/SageMath-#{version.csv.first}_#{arch}.dmg",
      verified: "github.com/3-manifolds/Sage_macOS/"
  name "Sage"
  desc "Mathematics software system"
  homepage "https://www.sagemath.org/"

  livecheck do
    url "https://github.com/3-manifolds/Sage_macOS/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/v?(\d+(?:\.\d+)+)/SageMath-(\d+(?:\.\d+)+)\+?\.dmg}i)
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
