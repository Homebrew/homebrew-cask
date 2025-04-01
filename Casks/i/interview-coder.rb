cask "interview-coder" do
  version "1.0.21"
  sha256 :no_check
  url "https://github.com/ibttf/interview-coder/releases/download/v1.0.21/Interview-Coder-arm64.dmg", verified: "https://github.com/ibttf/interview-coder/"
  appcast "https://github.com/interview-coder/interview-coder/releases.atom"
  name "Interview Coder"
  desc "Interview Coder is a tool that helps you prepare for technical interviews by providing a set of questions and answers."
  homepage "http://interviewcoder.co"
  app "Interview Coder.app"
  zap trash: [
    "/Applications/Interview Coder.app",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.chunginlee.interviewcoder.sfl3",
    "~/Library/Preferences/com.chunginlee.interviewcoder.plist",
  ]
end