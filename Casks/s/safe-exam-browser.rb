cask "safe-exam-browser" do
  version "3.3.2"
  sha256 "938bed22780675b7215f0cee0f75404e8374330ad41d4f36410e70f8642d30cb"

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
