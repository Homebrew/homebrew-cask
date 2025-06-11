cask "safe-exam-browser" do
  version "3.5.3"
  sha256 "b6fa376e306c4046746f91b9ff5bb2eaa36126ababb12a780c74192d2a43e28f"

  url "https://github.com/SafeExamBrowser/seb-mac/releases/download/#{version}/SafeExamBrowser-#{version}.dmg",
      verified: "github.com/SafeExamBrowser/seb-mac/"
  name "Safe Exam Browser"
  desc "Web browser environment to carry out e-assessments safely"
  homepage "https://safeexambrowser.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Safe Exam Browser.app"

  zap trash: "~/Library/Preferences/org.safeexambrowser.SafeExamBrowser.plist"
end
