cask "safe-exam-browser" do
  version "3.6.1"
  sha256 "ccb581fd8d5ef3c1e783c10bb60a398d18f924a0bd4566103a762d9e7be2524e"

  url "https://github.com/SafeExamBrowser/seb-mac/releases/download/#{version}/SafeExamBrowser-#{version}.dmg",
      verified: "github.com/SafeExamBrowser/seb-mac/"
  name "Safe Exam Browser"
  desc "Web browser environment to carry out e-assessments safely"
  homepage "https://safeexambrowser.org/"

  livecheck do
    url "https://safeexambrowser.org/download_en.html"
    regex(/href=.*?SafeExamBrowser[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Safe Exam Browser.app"

  zap trash: "~/Library/Preferences/org.safeexambrowser.SafeExamBrowser.plist"
end
