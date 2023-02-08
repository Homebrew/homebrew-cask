cask "safe-exam-browser" do
  version "3.2.2"
  sha256 "a25eb7b349d09fe3adb8c050a44e76ec84a122753e361ae8ca23a3613705c084"

  url "https://github.com/SafeExamBrowser/seb-mac/releases/download/#{version}/SafeExamBrowser-#{version}.dmg",
      verified: "github.com/SafeExamBrowser/seb-mac/"
  name "Safe Exam Browser"
  desc "Web browser environment to carry out e-assessments safely"
  homepage "https://safeexambrowser.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :el_capitan"

  app "Safe Exam Browser.app"

  zap trash: "~/Library/Preferences/org.safeexambrowser.SafeExamBrowser.plist"
end
