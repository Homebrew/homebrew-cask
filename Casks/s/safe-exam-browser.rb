cask "safe-exam-browser" do
  version "3.7.2"
  sha256 "a3e1936174a3e75bbe013f5aaf8a9af9d66c3a6d6ddaced608d0223837f0a8ab"

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
