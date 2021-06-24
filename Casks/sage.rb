cask "sage" do
  version "9.3,1.1"
  sha256 "3504a4e47264ab935a93853473c8cee9fa82e43ab0c5f546c1fc95143fd9e1e1"

  url "https://github.com/3-manifolds/Sage_macOS/releases/download/v#{version.after_comma}/SageMath-#{version.before_comma}.dmg",
      verified: "github.com/3-manifolds/Sage_macOS/"
  name "Sage"
  desc "Mathematics software system"
  homepage "https://www.sagemath.org/"

  livecheck do
    url "https://github.com/3-manifolds/Sage_macOS/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/v?(\d+(?:\.\d+)*)/SageMath-(\d+(?:\.\d+)*)\.dmg}i)
      "#{match[2]},#{match[1]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "SageMath-#{version.before_comma.dots_to_hyphens}.app"
  pkg "Recommended_#{version.before_comma.dots_to_underscores}.pkg"

  uninstall quit:    "org.sagemath.Sage",
            pkgutil: [
              "org.computop.SageMath.bin",
              "org.computop.SageMath.share",
            ]

  zap trash: [
    "~/.sage",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.sagemath.sage.sfl*",
    "~/Library/Logs/sage.log",
    "~/Library/Preferences/org.sagemath.Sage.plist",
  ]
end
