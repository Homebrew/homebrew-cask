cask "sage" do
  version "9.4,1.2.2"
  sha256 "d59e16c3ec816f5b1ca0a9ad1e77fe5710d6f6d65f84495c64a0e846d9df4da8"

  url "https://github.com/3-manifolds/Sage_macOS/releases/download/v#{version.after_comma}/SageMath-#{version.before_comma}%2B.dmg",
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

  app "SageMath-#{version.before_comma.dots_to_hyphens}.app"
  pkg "Recommended_#{version.before_comma.dots_to_underscores}.pkg"

  uninstall quit:    [
    "org.computop.sage",
    "org.computop.SageMath",
    "com.tcltk.tcllibrary",
    "com.tcltk.tklibrary",
  ],
            pkgutil: [
              "org.computop.SageMath.#{version.before_comma.dots_to_underscores}.bin",
              "org.computop.SageMath.#{version.before_comma.dots_to_underscores}.share",
              "org.computop.SageMath.#{version.before_comma.dots_to_underscores}.texlive",
            ]

  zap trash: [
    "~/.sage",
    "~/Library/Application Support/SageMath",
    "~/Library/Preferences/SageMath.plist",
  ]
end
