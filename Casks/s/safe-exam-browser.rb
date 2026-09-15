cask "safe-exam-browser" do
  version "3.7.1"
  sha256 "d9a11b2f5f35f5681b0f0f204a217bdcb90413481748f34cbff2ae86044e6086"

  url "https://github.com/SafeExamBrowser/seb-mac/releases/download/#{version}/SafeExamBrowser-#{version}.dmg"
  name "Safe Exam Browser"
  desc "Web browser environment to carry out e-assessments safely"
  homepage "https://safeexambrowser.org/"

  livecheck do
    url "https://safeexambrowser.org/download_en.html"
    regex(/href=.*?SafeExamBrowser[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on :macos

  app "Safe Exam Browser.app"

  uninstall quit: "org.safeexambrowser.SafeExamBrowser"

  zap trash: [
    "~/Library/Caches/org.safeexambrowser.SafeExamBrowser",
    "~/Library/Logs/Safe Exam Browser",
    "~/Library/Preferences/org.safeexambrowser.SafeExamBrowser.plist",
    "~/Library/WebKit/org.safeexambrowser.SafeExamBrowser",
  ]
end
