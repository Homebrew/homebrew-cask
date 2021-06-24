cask "sage" do
  version "9.3,1.1"
  sha256 "23c13690b8a72deca1628dd0e66a0f7b83557f98c13c3db1dc7eb15d80cf3a8d"

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

  app "SageMath-#{version.before_comma}.app"
  binary "#{appdir}/SageMath-#{version.before_comma}.app/Contents/Resources/sage/sage"

  uninstall quit: "org.sagemath.Sage"

  zap trash: [
    "~/.sage",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.sagemath.sage.sfl*",
    "~/Library/Logs/sage.log",
    "~/Library/Preferences/org.sagemath.Sage.plist",
  ]
end
