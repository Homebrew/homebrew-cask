cask "safe-exam-browser" do
  version "3.7"
  sha256 "fcf9725e9bbe42e58a843e5f60c4fc40ea7429c3bdebfb9c6f8c59f6f61f28e2"

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

  zap trash: [
    "~/Library/Caches/org.safeexambrowser.SafeExamBrowser",
    "~/Library/Logs/Safe Exam Browser",
    "~/Library/Preferences/org.safeexambrowser.SafeExamBrowser.plist",
    "~/Library/WebKit/org.safeexambrowser.SafeExamBrowser",
  ]
end
